import Foundation
import Networking
import Storage
import Hardware


// MARK: - Exported ReadOnly Symbols

public typealias Account = Networking.Account
public typealias AccountSettings = Networking.AccountSettings
public typealias AddOnGroup = Networking.AddOnGroup
public typealias Address = Networking.Address
public typealias Announcement = Networking.Announcement
public typealias APNSDevice = Networking.APNSDevice
public typealias FallibleCancelable = Hardware.FallibleCancelable
public typealias CommentStatus = Networking.CommentStatus
public typealias Coupon = Networking.Coupon
public typealias CouponReport = Networking.CouponReport
public typealias Country = Networking.Country
public typealias CreateAccountResult = Networking.CreateAccountResult
public typealias CreateAccountError = Networking.CreateAccountError
public typealias Credentials = Networking.Credentials
public typealias CreateProductVariation = Networking.CreateProductVariation
public typealias Customer = Networking.Customer
public typealias DomainContactInfo = Networking.DomainContactInfo
public typealias DomainContactInfoError = Networking.DomainContactInfoError
public typealias DomainToPurchase = Networking.PaidDomainSuggestion
public typealias DotcomDevice = Networking.DotcomDevice
public typealias DotcomUser = Networking.DotcomUser
public typealias Feature = Networking.Feature
public typealias FreeDomainSuggestion = Networking.FreeDomainSuggestion
public typealias SiteDomain = Networking.SiteDomain
public typealias InboxNote = Networking.InboxNote
public typealias InboxAction = Networking.InboxAction
public typealias JetpackUser = Networking.JetpackUser
public typealias JustInTimeMessageHook = Networking.JustInTimeMessagesRemote.MessagePath.Hook
public typealias Leaderboard = Networking.Leaderboard
public typealias LeaderboardRow = Networking.LeaderboardRow
public typealias LeaderboardRowContent = Networking.LeaderboardRowContent
public typealias Media = Networking.Media
public typealias MetaContainer = Networking.MetaContainer
public typealias Note = Networking.Note
public typealias NoteBlock = Networking.NoteBlock
public typealias NoteMedia = Networking.NoteMedia
public typealias NoteRange = Networking.NoteRange
public typealias Order = Networking.Order
public typealias OrderItem = Networking.OrderItem
public typealias OrderItemAttribute = Networking.OrderItemAttribute
public typealias OrderItemTax = Networking.OrderItemTax
public typealias OrderItemRefund = Networking.OrderItemRefund
public typealias OrderItemTaxRefund = Networking.OrderItemTaxRefund
public typealias OrderStatusEnum = Networking.OrderStatusEnum
public typealias OrderCouponLine = Networking.OrderCouponLine
public typealias OrderFeeLine = Networking.OrderFeeLine
public typealias OrderFeeTaxStatus = Networking.OrderFeeTaxStatus
public typealias OrderMetaData = Networking.OrderMetaData
public typealias OrderNote = Networking.OrderNote
public typealias OrderTaxLine = Networking.OrderTaxLine
public typealias OrderRefundCondensed = Networking.OrderRefundCondensed
public typealias OrderStatsV4 = Networking.OrderStatsV4
public typealias OrderStatsV4Interval = Networking.OrderStatsV4Interval
public typealias OrderStatsV4Totals = Networking.OrderStatsV4Totals
public typealias OrderStatus = Networking.OrderStatus
public typealias OrderUpdateField = Networking.OrdersRemote.UpdateOrderField
public typealias OrderCreateField = Networking.OrdersRemote.CreateOrderField
public typealias PaymentGateway = Networking.PaymentGateway
public typealias PaymentGatewayAccount = Networking.PaymentGatewayAccount
public typealias Product = Networking.Product
public typealias ProductAddOn = Networking.ProductAddOn
public typealias ProductAddOnOption = Networking.ProductAddOnOption
public typealias ProductBackordersSetting = Networking.ProductBackordersSetting
public typealias ProductReview = Networking.ProductReview
public typealias ProductReviewStatus = Networking.ProductReviewStatus
public typealias ProductShippingClass = Networking.ProductShippingClass
public typealias ProductStatus = Networking.ProductStatus
public typealias ProductCatalogVisibility = Networking.ProductCatalogVisibility
public typealias ProductStockStatus = Networking.ProductStockStatus
public typealias ProductType = Networking.ProductType
public typealias ProductCategory = Networking.ProductCategory
public typealias ProductTag = Networking.ProductTag
public typealias ProductTaxStatus = Networking.ProductTaxStatus
public typealias ProductImage = Networking.ProductImage
public typealias ProductAttribute = Networking.ProductAttribute
public typealias ProductAttributeTerm = Networking.ProductAttributeTerm
public typealias ProductDimensions = Networking.ProductDimensions
public typealias ProductDefaultAttribute = Networking.ProductDefaultAttribute
public typealias ProductDownload = Networking.ProductDownload
public typealias ProductDownloadDragAndDrop = Networking.ProductDownloadDragAndDrop
public typealias ProductVariation = Networking.ProductVariation
public typealias ProductVariationAttribute = Networking.ProductVariationAttribute
public typealias ReaderLocation = Networking.ReaderLocation
public typealias Refund = Networking.Refund
public typealias StatGranularity = Networking.StatGranularity
public typealias StatsGranularityV4 = Networking.StatsGranularityV4
public typealias ShipmentTracking = Networking.ShipmentTracking
public typealias ShipmentTrackingProvider = Networking.ShipmentTrackingProvider
public typealias ShipmentTrackingProviderGroup = Networking.ShipmentTrackingProviderGroup
public typealias ShippingLabel = Networking.ShippingLabel
public typealias ShippingLabelAddress = Networking.ShippingLabelAddress
public typealias ShippingLabelAddressVerification = Networking.ShippingLabelAddressVerification
public typealias ShippingLabelPackagesResponse = Networking.ShippingLabelPackagesResponse
public typealias ShippingLabelStoreOptions = Networking.ShippingLabelStoreOptions
public typealias ShipType = Networking.ShippingLabelAddressVerification.ShipType
public typealias ShippingLabelAccountSettings = Networking.ShippingLabelAccountSettings
public typealias ShippingLabelAddressValidationSuccess = Networking.ShippingLabelAddressValidationSuccess
public typealias ShippingLabelAddressValidationError = Networking.ShippingLabelAddressValidationError
public typealias ShippingLabelCustomPackage = Networking.ShippingLabelCustomPackage
public typealias ShippingLabelPackagePurchase = Networking.ShippingLabelPackagePurchase
public typealias ShippingLabelPackageSelected = Networking.ShippingLabelPackageSelected
public typealias ShippingLabelCustomsForm = Networking.ShippingLabelCustomsForm
public typealias ShippingLabelPredefinedOption = Networking.ShippingLabelPredefinedOption
public typealias ShippingLabelPredefinedPackage = Networking.ShippingLabelPredefinedPackage
public typealias ShippingLabelPaperSize = Networking.ShippingLabelPaperSize
public typealias ShippingLabelPaymentCardType = Networking.ShippingLabelPaymentCardType
public typealias ShippingLabelPaymentMethod = Networking.ShippingLabelPaymentMethod
public typealias ShippingLabelPrintData = Networking.ShippingLabelPrintData
public typealias ShippingLabelRefund = Networking.ShippingLabelRefund
public typealias ShippingLabelSettings = Networking.ShippingLabelSettings
public typealias ShippingLabelCarriersAndRates = Networking.ShippingLabelCarriersAndRates
public typealias ShippingLabelCarrierRate = Networking.ShippingLabelCarrierRate
public typealias ShippingLine = Networking.ShippingLine
public typealias ShippingLineTax = Networking.ShippingLineTax
public typealias Site = Networking.Site
public typealias SiteAPI = Networking.SiteAPI
public typealias Post = Networking.Post
public typealias SitePlugin = Networking.SitePlugin
public typealias SitePluginStatusEnum = Networking.SitePluginStatusEnum
public typealias SiteSetting = Networking.SiteSetting
public typealias SiteSettingGroup = Networking.SiteSettingGroup
public typealias SiteSummaryStats = Networking.SiteSummaryStats
public typealias SiteVisitStats = Networking.SiteVisitStats
public typealias SiteVisitStatsItem = Networking.SiteVisitStatsItem
public typealias StateOfACountry = Networking.StateOfACountry
public typealias SystemPlugin = Networking.SystemPlugin
public typealias SystemStatus = Networking.SystemStatus
public typealias TaxClass = Networking.TaxClass
public typealias TopEarnerStats = Networking.TopEarnerStats
public typealias TopEarnerStatsItem = Networking.TopEarnerStatsItem
public typealias User = Networking.User
public typealias WooAPIVersion = Networking.WooAPIVersion
public typealias WPComPlan = Networking.WPComPlan
public typealias WPComSitePlan = Networking.WPComSitePlan
public typealias StoredProductSettings = Networking.StoredProductSettings
public typealias CardReader = Hardware.CardReader
public typealias CardReaderDiscoveryMethod = Hardware.CardReaderDiscoveryMethod
public typealias CardReaderEvent = Hardware.CardReaderEvent
public typealias CardReaderInput = Hardware.CardReaderInput
public typealias CardReaderSoftwareUpdateState = Hardware.CardReaderSoftwareUpdateState
public typealias CardReaderServiceDiscoveryStatus = Hardware.CardReaderServiceDiscoveryStatus
public typealias CardReaderServiceError = Hardware.CardReaderServiceError
public typealias CardReaderServiceUnderlyingError = Hardware.UnderlyingError
public typealias CardReaderType = Hardware.CardReaderType
public typealias CardReaderConfigError = Hardware.CardReaderConfigError
public typealias PaymentMethod = Hardware.PaymentMethod
public typealias PaymentParameters = Hardware.PaymentIntentParameters
public typealias RefundParameters = Hardware.RefundParameters
public typealias PaymentIntent = Hardware.PaymentIntent
public typealias PrintingResult = Hardware.PrintingResult
public typealias CardPresentReceiptParameters = Hardware.CardPresentReceiptParameters
public typealias CardPresentTransactionDetails = Hardware.CardPresentTransactionDetails
public typealias StripeAccount = Networking.StripeAccount
public typealias WCPayAccount = Networking.WCPayAccount
public typealias WCPayAccountStatusEnum = Networking.WCPayAccountStatusEnum
public typealias WCPayPaymentMethodType = Networking.WCPayPaymentMethodType
public typealias WCPayCharge = Networking.WCPayCharge
public typealias WCPayCardBrand = Networking.WCPayCardBrand
public typealias WCPayCardFunding = Networking.WCPayCardFunding
public typealias WCPayCardPresentPaymentDetails = Networking.WCPayCardPresentPaymentDetails
public typealias WCPayCardPaymentDetails = Networking.WCPayCardPaymentDetails
public typealias WCPayCardPresentReceiptDetails = Networking.WCPayCardPresentReceiptDetails
public typealias WCPayPaymentMethodDetails = Networking.WCPayPaymentMethodDetails
public typealias WCPayChargeStatus = Networking.WCPayChargeStatus
public typealias StoreOnboardingTask = Networking.StoreOnboardingTask

// MARK: - Exported Storage Symbols

public typealias StorageAccount = Storage.Account
public typealias StorageAccountSettings = Storage.AccountSettings
public typealias StorageAttribute = Storage.GenericAttribute
public typealias StorageCoupon = Storage.Coupon
public typealias StorageCustomer = Storage.Customer
public typealias StorageCustomerSearchResult = Storage.CustomerSearchResult
public typealias StorageCouponSearchResult = Storage.CouponSearchResult
public typealias StorageAddOnGroup = Storage.AddOnGroup
public typealias StorageAnnouncement = Storage.Announcement
public typealias StorageEligibilityErrorInfo = Storage.EligibilityErrorInfo
public typealias StorageFeature = Storage.Feature
public typealias StorageFeatureIcon = Storage.FeatureIcon
public typealias StorageInboxNote = Storage.InboxNote
public typealias StorageInboxAction = Storage.InboxAction
public typealias StorageNote = Storage.Note
public typealias StorageOrder = Storage.Order
public typealias StorageOrderItemAttribute = Storage.OrderItemAttribute
public typealias StorageOrderItemRefund = Storage.OrderItemRefund
public typealias StorageOrderNote = Storage.OrderNote
public typealias StorageOrderRefund = Storage.OrderRefundCondensed
public typealias StorageOrderStatsV4 = Storage.OrderStatsV4
public typealias StorageOrderStatsV4Interval = Storage.OrderStatsV4Interval
public typealias StorageOrderStatsV4Totals = Storage.OrderStatsV4Totals
public typealias StorageOrderStatus = Storage.OrderStatus
public typealias StorageCountry = Storage.Country
public typealias StoragePaymentGateway = Storage.PaymentGateway
public typealias StoragePaymentGatewayAccount = Storage.PaymentGatewayAccount
public typealias StoragePreselectedProvider = Storage.PreselectedProvider
public typealias StorageProduct = Storage.Product
public typealias StorageProductAddOn = Storage.ProductAddOn
public typealias StorageProductAddOnOption = Storage.ProductAddOnOption
public typealias StorageProductDimensions = Storage.ProductDimensions
public typealias StorageProductAttribute = Storage.ProductAttribute
public typealias StorageProductAttributeTerm = Storage.ProductAttributeTerm
public typealias StorageProductImage = Storage.ProductImage
public typealias StorageProductCategory = Storage.ProductCategory
public typealias StorageProductDefaultAttribute = Storage.ProductDefaultAttribute
public typealias StorageProductDownload = Storage.ProductDownload
public typealias StorageProductReview = Storage.ProductReview
public typealias StorageProductShippingClass = Storage.ProductShippingClass
public typealias StorageProductTag = Storage.ProductTag
public typealias StorageRefund = Storage.Refund
public typealias StorageProductVariation = Storage.ProductVariation
public typealias StorageShipmentTracking = Storage.ShipmentTracking
public typealias StorageShipmentTrackingProvider = Storage.ShipmentTrackingProvider
public typealias StorageShipmentTrackingProviderGroup = Storage.ShipmentTrackingProviderGroup
public typealias StorageShippingLabel = Storage.ShippingLabel
public typealias StorageShippingLabelAccountSettings = Storage.ShippingLabelAccountSettings
public typealias StorageShippingLabelAddress = Storage.ShippingLabelAddress
public typealias StorageShippingLabelRefund = Storage.ShippingLabelRefund
public typealias StorageShippingLabelSettings = Storage.ShippingLabelSettings
public typealias StorageShippingLine = Storage.ShippingLine
public typealias StorageShippingLineTax = Storage.ShippingLineTax
public typealias StorageSite = Storage.Site
public typealias StorageSitePlugin = Storage.SitePlugin
public typealias StorageSiteSetting = Storage.SiteSetting
public typealias StorageSiteSummaryStats = Storage.SiteSummaryStats
public typealias StorageSiteVisitStats = Storage.SiteVisitStats
public typealias StorageSiteVisitStatsItem = Storage.SiteVisitStatsItem
public typealias StorageStateOfACountry = Storage.StateOfACountry
public typealias StorageSystemPlugin = Storage.SystemPlugin
public typealias StorageTopEarnerStats = Storage.TopEarnerStats
public typealias StorageTopEarnerStatsItem = Storage.TopEarnerStatsItem
public typealias StorageTaxClass = Storage.TaxClass
public typealias StorageWCPayCharge = Storage.WCPayCharge
public typealias FeatureAnnouncementCampaign = Storage.FeatureAnnouncementCampaign
public typealias FeatureAnnouncementCampaignSettings = Storage.FeatureAnnouncementCampaignSettings

// MARK: - Internal ReadOnly Models

typealias UploadableMedia = Networking.UploadableMedia
