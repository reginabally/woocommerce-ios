@testable import WooCommerce
import Experiments

struct MockFeatureFlagService: FeatureFlagService {
    private let isInboxOn: Bool
    private let isSplitViewInOrdersTabOn: Bool
    private let isUpdateOrderOptimisticallyOn: Bool
    private let shippingLabelsOnboardingM1: Bool
    private let isLoginPrologueOnboardingEnabled: Bool
    private let isStoreCreationMVPEnabled: Bool
    private let isStoreCreationM2Enabled: Bool
    private let isStoreCreationM2WithInAppPurchasesEnabled: Bool
    private let isDomainSettingsEnabled: Bool
    private let isSupportRequestEnabled: Bool

    init(isInboxOn: Bool = false,
         isSplitViewInOrdersTabOn: Bool = false,
         isUpdateOrderOptimisticallyOn: Bool = false,
         shippingLabelsOnboardingM1: Bool = false,
         isLoginPrologueOnboardingEnabled: Bool = false,
         isStoreCreationMVPEnabled: Bool = true,
         isStoreCreationM2Enabled: Bool = false,
         isStoreCreationM2WithInAppPurchasesEnabled: Bool = false,
         isDomainSettingsEnabled: Bool = false,
         isSupportRequestEnabled: Bool = false) {
        self.isInboxOn = isInboxOn
        self.isSplitViewInOrdersTabOn = isSplitViewInOrdersTabOn
        self.isUpdateOrderOptimisticallyOn = isUpdateOrderOptimisticallyOn
        self.shippingLabelsOnboardingM1 = shippingLabelsOnboardingM1
        self.isLoginPrologueOnboardingEnabled = isLoginPrologueOnboardingEnabled
        self.isStoreCreationMVPEnabled = isStoreCreationMVPEnabled
        self.isStoreCreationM2Enabled = isStoreCreationM2Enabled
        self.isStoreCreationM2WithInAppPurchasesEnabled = isStoreCreationM2WithInAppPurchasesEnabled
        self.isDomainSettingsEnabled = isDomainSettingsEnabled
        self.isSupportRequestEnabled = isSupportRequestEnabled
    }

    func isFeatureFlagEnabled(_ featureFlag: FeatureFlag) -> Bool {
        switch featureFlag {
        case .inbox:
            return isInboxOn
        case .splitViewInOrdersTab:
            return isSplitViewInOrdersTabOn
        case .updateOrderOptimistically:
            return isUpdateOrderOptimisticallyOn
        case .shippingLabelsOnboardingM1:
            return shippingLabelsOnboardingM1
        case .loginPrologueOnboarding:
            return isLoginPrologueOnboardingEnabled
        case .storeCreationMVP:
            return isStoreCreationMVPEnabled
        case .storeCreationM2:
            return isStoreCreationM2Enabled
        case .storeCreationM2WithInAppPurchasesEnabled:
            return isStoreCreationM2WithInAppPurchasesEnabled
        case .domainSettings:
            return isDomainSettingsEnabled
        case .supportRequests:
            return isSupportRequestEnabled
        default:
            return false
        }
    }
}
