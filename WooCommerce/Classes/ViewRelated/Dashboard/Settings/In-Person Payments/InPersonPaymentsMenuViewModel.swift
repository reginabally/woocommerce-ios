import Foundation
import Yosemite
import WooFoundation

final class InPersonPaymentsMenuViewModel {
    // MARK: - Dependencies
    struct Dependencies {
        let stores: StoresManager
        let analytics: Analytics

        init(stores: StoresManager = ServiceLocator.stores,
             analytics: Analytics = ServiceLocator.analytics) {
            self.stores = stores
            self.analytics = analytics
        }
    }

    private let dependencies: Dependencies

    private var stores: StoresManager {
        dependencies.stores
    }

    private var analytics: Analytics {
        dependencies.analytics
    }

    // MARK: - Output properties
    @Published var showWebView: AuthenticatedWebViewModel? = nil

    // MARK: - Configuration properties
    private var siteID: Int64? {
        return stores.sessionManager.defaultStoreID
    }

    var isEligibleForCardPresentPayments: Bool {
        cardPresentPaymentsConfiguration.isSupportedCountry
    }

    var isEligibleForTapToPayOnIPhone: Bool {
        return isEligibleForCardPresentPayments && cardPresentPaymentsConfiguration.supportedReaders.contains { $0 == .appleBuiltIn }
    }

    let cardPresentPaymentsConfiguration: CardPresentPaymentsConfiguration

    init(dependencies: Dependencies = Dependencies(),
         cardPresentPaymentsConfiguration: CardPresentPaymentsConfiguration = CardPresentConfigurationLoader().configuration) {
        self.dependencies = dependencies
        self.cardPresentPaymentsConfiguration = cardPresentPaymentsConfiguration
    }

    func viewDidLoad() {
        guard let siteID = siteID else {
            return
        }

        let action = PaymentGatewayAction.synchronizePaymentGateways(siteID: siteID, onCompletion: { _ in })
        stores.dispatch(action)
    }

    func orderCardReaderPressed() {
        analytics.track(.paymentsMenuOrderCardReaderTapped)
        showWebView = PurchaseCardReaderWebViewViewModel(configuration: cardPresentPaymentsConfiguration,
                                                         utmProvider: WooCommerceComUTMProvider(
                                                            campaign: Constants.utmCampaign,
                                                            source: Constants.utmSource,
                                                            content: nil,
                                                            siteID: siteID),
                                                         onDismiss: { [weak self] in
            self?.showWebView = nil
        })
    }
}

private enum Constants {
    static let utmCampaign = "payments_menu_item"
    static let utmSource = "payments_menu"
}
