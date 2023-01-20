import Combine
import Foundation

/// View model for the second step of `StoreCreationSellingStatusQuestionView`, an optional profiler question about store selling status
/// in the store creation flow.
/// When the user previously indicates that they're already selling online, this view model provides data for the followup question on the platforms they're
/// already selling on.
@MainActor
final class StoreCreationSellingPlatformsQuestionViewModel: StoreCreationProfilerQuestionViewModel, ObservableObject {
    /// Other online platforms that the user might be selling. Source of truth:
    /// https://github.com/Automattic/woocommerce.com/blob/trunk/themes/woo/start/config/options.json
    enum Platform: String, CaseIterable {
        case amazon
        case bigCartel = "big-cartel"
        case bigCommerce = "big-commerce"
        case eBay = "ebay"
        case etsy
        case facebookMarketplace = "facebook-marketplace"
        case googleShopping = "google-shopping"
        case pinterest
        case shopify
        case square
        case squarespace
        case wix
        case wordPress
    }

    let topHeader: String

    let title: String = Localization.title

    let subtitle: String = Localization.subtitle

    /// Question content.
    /// TODO: 8376 - update values when API is ready.
    let platforms: [Platform] = Platform.allCases

    @Published private(set) var selectedPlatforms: Set<Platform> = []

    private let onContinue: (StoreCreationSellingStatusAnswer?) -> Void
    private let onSkip: () -> Void

    init(storeName: String,
         onContinue: @escaping (StoreCreationSellingStatusAnswer?) -> Void,
         onSkip: @escaping () -> Void) {
        self.topHeader = storeName
        self.onContinue = onContinue
        self.onSkip = onSkip
    }
}

extension StoreCreationSellingPlatformsQuestionViewModel: OptionalStoreCreationProfilerQuestionViewModel {
    func continueButtonTapped() async {
        // TODO: submission API.
        onContinue(.init(sellingStatus: .alreadySellingOnline, sellingPlatforms: selectedPlatforms))
    }

    func skipButtonTapped() {
        onSkip()
    }
}

extension StoreCreationSellingPlatformsQuestionViewModel {
    /// Called when a platform is selected.
    func selectPlatform(_ platform: Platform) {
        if selectedPlatforms.contains(platform) {
            selectedPlatforms.remove(platform)
        } else {
            selectedPlatforms.insert(platform)
        }
    }
}

extension StoreCreationSellingPlatformsQuestionViewModel.Platform {
    var description: String {
        switch self {
        case .amazon:
            return NSLocalizedString(
                "Amazon",
                comment: "Option in the store creation selling platforms question."
            )
        case .bigCartel:
            return NSLocalizedString(
                "Big Cartel",
                comment: "Option in the store creation selling platforms question."
            )
        case .bigCommerce:
            return NSLocalizedString(
                "Big Commerce",
                comment: "Option in the store creation selling platforms question."
            )
        case .eBay:
            return NSLocalizedString(
                "Ebay",
                comment: "Option in the store creation selling platforms question."
            )
        case .etsy:
            return NSLocalizedString(
                "Etsy",
                comment: "Option in the store creation selling platforms question."
            )
        case .facebookMarketplace:
            return NSLocalizedString(
                "Facebook Marketplace",
                comment: "Option in the store creation selling platforms question."
            )
        case .googleShopping:
            return NSLocalizedString(
                "Google Shopping",
                comment: "Option in the store creation selling platforms question."
            )
        case .pinterest:
            return NSLocalizedString(
                "Pinterest",
                comment: "Option in the store creation selling platforms question."
            )
        case .shopify:
            return NSLocalizedString(
                "Shopify",
                comment: "Option in the store creation selling platforms question."
            )
        case .square:
            return NSLocalizedString(
                "Square",
                comment: "Option in the store creation selling platforms question."
            )
        case .squarespace:
            return NSLocalizedString(
                "Squarespace",
                comment: "Option in the store creation selling platforms question."
            )
        case .wix:
            return NSLocalizedString(
                "Wix",
                comment: "Option in the store creation selling platforms question."
            )
        case .wordPress:
            return NSLocalizedString(
                "WordPress",
                comment: "Option in the store creation selling platforms question."
            )
        }
    }
}

private extension StoreCreationSellingPlatformsQuestionViewModel {
    enum Localization {
        static let title = NSLocalizedString(
            "In which platform are you currently selling?",
            comment: "Title of the store creation profiler question about the store selling platforms."
        )
        static let subtitle = NSLocalizedString(
            "You can choose multiple ones.",
            comment: "Subtitle of the store creation profiler question about the store selling platforms."
        )
    }
}
