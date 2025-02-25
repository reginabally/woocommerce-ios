import WordPressShared

/// This enum contains all of the events we track in the app. Please reference the "Woo Mobile Events Draft i2"
/// spreadsheet for more details.
///
/// One of goals of this `enum` is to be able to list all the event names that we use throughout
/// the app. We can also potentially make a parser to gather all the event names and automatically
/// compare them with WCAndroid. With that, we can make sure both platforms are tracking the
/// same events. Right now, we use the spreadsheet. XD
///
/// ### Type-Safe Properties
///
/// If an event has custom properties, add and use a constructor defined in `WooAnalyticsEvent`.
///
/// ### Excluding Site Properties
///
/// Note: If you would like to exclude site properties (e.g. `blog_id`) for a given event, please
/// add the event to the `WooAnalyticsStat.shouldSendSiteProperties` var.
///
public enum WooAnalyticsStat: String {

    // MARK: Application Events
    //
    case applicationInstalled = "application_installed"
    case applicationUpgraded = "application_upgraded"
    case applicationOpened = "application_opened"
    case applicationClosed = "application_closed"

    // MARK: Authentication Events
    //
    case signedIn = "signed_in"
    case logout = "account_logout"
    case openedLogin = "login_accessed"
    case loginNewToWooButtonTapped = "login_new_to_woo_button_tapped"
    case loginFailed = "login_failed_to_login"
    case loginAutoFillCredentialsFilled = "login_autofill_credentials_filled"
    case loginAutoFillCredentialsUpdated = "login_autofill_credentials_updated"
    case loginEmailFormViewed = "login_email_form_viewed"
    case loginJetpackRequiredScreenViewed = "login_jetpack_required_screen_viewed"
    case loginJetpackRequiredViewInstructionsButtonTapped = "login_jetpack_required_view_instructions_button_tapped"
    case loginLocalNotificationTapped = "login_local_notification_tapped"
    case loginLocalNotificationDismissed = "login_local_notification_dismissed"
    case loginLocalNotificationScheduled = "login_local_notification_scheduled"
    case loginWhatIsJetpackHelpScreenViewed = "login_what_is_jetpack_help_screen_viewed"
    case loginWhatIsJetpackHelpScreenOkButtonTapped = "login_what_is_jetpack_help_screen_ok_button_tapped"
    case loginWhatIsJetpackHelpScreenLearnMoreButtonTapped = "login_what_is_jetpack_help_screen_learn_more_button_tapped"
    case loginMagicLinkOpenEmailClientViewed = "login_magic_link_open_email_client_viewed"
    case loginMagicLinkRequestFormViewed = "login_magic_link_request_form_viewed"
    case loginMagicLinkExited = "login_magic_link_exited"
    case loginMagicLinkFailed = "login_magic_link_failed"
    case loginMagicLinkOpened = "login_magic_link_opened"
    case loginMagicLinkRequested = "login_magic_link_requested"
    case loginMagicLinkSucceeded = "login_magic_link_succeeded"
    case loginOnboardingShown = "login_onboarding_shown"
    case loginOnboardingNextButtonTapped = "login_onboarding_next_button_tapped"
    case loginOnboardingSkipButtonTapped = "login_onboarding_skip_button_tapped"
    case loginPasswordFormViewed = "login_password_form_viewed"
    case loginURLFormViewed = "login_url_form_viewed"
    case loginURLHelpScreenViewed = "login_url_help_screen_viewed"
    case loginUsernamePasswordFormViewed = "login_username_password_form_viewed"
    case loginTwoFactorFormViewed = "login_two_factor_form_viewed"
    case loginEpilogueViewed = "login_epilogue_viewed"
    case loginProloguePaged = "login_prologue_paged"
    case loginPrologueViewed = "login_prologue_viewed"
    case loginPrologueContinueTapped = "login_prologue_jetpack_login_button_tapped"
    case loginPrologueJetpackInstructions = "login_prologue_jetpack_configuration_instructions_link_tapped"
    case loginForgotPasswordClicked = "login_forgot_password_clicked"
    case loginSocialButtonClick = "login_social_button_click"
    case loginSocialButtonFailure = "login_social_button_failure"
    case loginSocialConnectSuccess = "login_social_connect_success"
    case loginSocialConnectFailure = "login_social_connect_failure"
    case loginSocialSuccess = "login_social_login_success"
    case loginSocialFailure = "login_social_login_failure"
    case loginSocial2faNeeded = "login_social_2fa_needed"
    case loginSocialAccountsNeedConnecting = "login_social_accounts_need_connecting"
    case loginSocialErrorUnknownUser = "login_social_error_unknown_user"
    case onePasswordFailed = "one_password_failed"
    case onePasswordLogin = "one_password_login"
    case onePasswordSignup = "one_password_signup"
    case twoFactorCodeRequested = "two_factor_code_requested"
    case twoFactorSentSMS = "two_factor_sent_sms"
    case loginInvalidEmailScreenViewed = "login_invalid_email_screen_viewed"
    case whatIsWPComOnInvalidEmailScreenTapped = "what_is_wordpress_com_on_invalid_email_screen"
    case createAccountOnInvalidEmailScreenTapped = "create_account_on_invalid_email_screen"
    case loginInsufficientRole = "login_insufficient_role"

    // MARK: REST API login
    //
    case loginSiteAddressSiteInfoFetched = "login_site_address_site_info_fetched"
    case loginSiteCredentialsFailed = "login_site_credentials_login_failed"

    // MARK: Site credentials
    //
    case loginJetpackSiteCredentialScreenViewed = "login_jetpack_site_credential_screen_viewed"
    case loginJetpackSiteCredentialScreenDismissed = "login_jetpack_site_credential_screen_dismissed"
    case loginJetpackSiteCredentialInstallTapped = "login_jetpack_site_credential_install_button_tapped"
    case loginJetpackSiteCredentialResetPasswordTapped = "login_jetpack_site_credential_reset_password_button_tapped"
    case loginJetpackSiteCredentialDidShowErrorAlert = "login_jetpack_site_credential_did_show_error_alert"
    case loginJetpackSiteCredentialDidFinishLogin = "login_jetpack_site_credential_did_finish_login"

    // MARK: Install/Setup Jetpack (`LoginJetpackSetupView`)
    //
    case loginJetpackSetupScreenViewed = "login_jetpack_setup_screen_viewed"
    case loginJetpackSetupScreenDismissed = "login_jetpack_setup_screen_dismissed"

    case loginJetpackSetupScreenInstallSuccessful = "login_jetpack_setup_install_successful"
    case loginJetpackSetupScreenInstallFailed = "login_jetpack_setup_install_failed"

    case loginJetpackSetupActivationSuccessful = "login_jetpack_setup_activation_successful"
    case loginJetpackSetupActivationFailed = "login_jetpack_setup_activation_failed"

    case loginJetpackSetupFetchJetpackConnectionURLSuccessful = "login_jetpack_setup_fetch_jetpack_connection_url_successful"
    case loginJetpackSetupFetchJetpackConnectionURLFailed = "login_jetpack_setup_fetch_jetpack_connection_url_failed"

    case loginJetpackSetupCannotFindWPCOMUser = "login_jetpack_setup_cannot_find_WPCOM_user"
    case loginJetpackSetupAllStepsMarkedDone = "login_jetpack_setup_all_steps_marked_done"
    case loginJetpackSetupErrorCheckingJetpackConnection = "login_jetpack_setup_error_checking_jetpack_connection"

    case loginJetpackSetupGoToStoreTapped = "login_jetpack_setup_go_to_store_button_tapped"

    case loginJetpackSetupAuthorizedUsingDifferentWPCOMAccount = "login_jetpack_setup_authorized_using_different_wpcom_account"

    case loginJetpackSetupScreenTryAgainButtonTapped = "login_jetpack_setup_try_again_button_tapped"
    case loginJetpackSetupScreenGetSupportTapped = "login_jetpack_setup_get_support_button_tapped"

    // MARK: No matched site alert
    //
    case loginJetpackNoMatchedSiteErrorViewed = "login_jetpack_no_matched_site_error_viewed"
    case loginJetpackNoMatchedSiteErrorTryAgainButtonTapped = "login_jetpack_no_matched_site_error_try_again_button_tapped"
    case loginJetpackNoMatchedSiteErrorContactSupportButtonTapped = "login_jetpack_no_matched_site_error_contact_support_button_tapped"

    // MARK: Dashboard View Events
    //
    case dashboardSelected = "main_tab_dashboard_selected"
    case dashboardReselected = "main_tab_dashboard_reselected"
    case dashboardPulledToRefresh = "dashboard_pulled_to_refresh"
    case dashboardNewOrdersButtonTapped = "dashboard_unfulfilled_orders_button_tapped"
    case dashboardShareStoreButtonTapped = "dashboard_share_your_store_button_tapped"
    case dashboardSeeMoreAnalyticsTapped = "dashboard_see_more_analytics_tapped"

    // MARK: Dashboard Data/Action Events
    //
    case dashboardMainStatsDate = "dashboard_main_stats_date"
    case dashboardMainStatsLoaded = "dashboard_main_stats_loaded"
    case dashboardTopPerformersDate = "dashboard_top_performers_date"
    case dashboardTopPerformersLoaded = "dashboard_top_performers_loaded"
    case dashboardUnfulfilledOrdersLoaded = "dashboard_unfulfilled_orders_loaded"
    case dashboardMainStatsWaitingTimeLoaded = "dashboard_main_stats_waiting_time_loaded"
    case dashboardTopPerformersWaitingTimeLoaded = "dashboard_top_performers_waiting_time_loaded"

    // MARK: Dashboard Stats v3/v4 Events
    //
    case dashboardNewStatsAvailabilityBannerCancelTapped = "dashboard_new_stats_availability_banner_cancel_tapped"
    case dashboardNewStatsAvailabilityBannerTryTapped = "dashboard_new_stats_availability_banner_try_tapped"
    case dashboardNewStatsRevertedBannerDismissTapped = "dashboard_new_stats_reverted_banner_dismiss_tapped"
    case dashboardNewStatsRevertedBannerLearnMoreTapped = "dashboard_new_stats_reverted_banner_learn_more_tapped"
    case usedAnalytics = "used_analytics"

    // MARK: Analytics Hub Events
    //
    case analyticsHubDateRangeButtonTapped = "analytics_hub_date_range_button_tapped"
    case analyticsHubDateRangeOptionSelected = "analytics_hub_date_range_option_selected"
    case analyticsHubDateRangeSelectionFailed = "analytics_hub_date_range_selection_failed"

    // MARK: Products Onboarding Events
    //
    case productsOnboardingEligible = "products_onboarding_store_is_eligible"
    case productsOnboardingCTATapped = "products_onboarding_cta_tapped"

    // MARK: Site picker. Can be triggered by login epilogue or settings.
    //
    case sitePickerContinueTapped = "site_picker_continue_tapped"
    case sitePickerStoresShown = "site_picker_stores_shown"
    case sitePickerHelpButtonTapped = "site_picker_help_button_tapped"
    case sitePickerLogoutButtonTapped = "site_picker_logout_tapped"
    case sitePickerNonWooSiteTapped = "site_picker_non_woo_site_tapped"
    case sitePickerSiteDiscovery = "site_picker_site_discovery"
    case sitePickerNewToWooTapped = "site_picker_new_to_woo_tapped"
    case sitePickerAddStoreTapped = "site_picker_add_a_store_tapped"
    case sitePickerConnectExistingStoreTapped = "site_picker_connect_existing_store_tapped"

    // MARK: Site creation
    //
    case sitePickerCreateSiteTapped = "site_picker_create_site_tapped"
    case siteCreated = "login_woocommerce_site_created"
    case siteCreationFailed = "site_creation_failed"
    case siteCreationDismissed = "site_creation_dismissed"
    case siteCreationStep = "site_creation_step"
    case siteCreationSitePreviewed = "site_creation_site_previewed"
    case siteCreationManageStoreTapped = "site_creation_store_management_opened"
    case siteCreationProfilerData = "site_creation_profiler_data"
    case loginPrologueCreateSiteTapped = "login_prologue_create_site_tapped"
    case signupFormLoginTapped = "signup_login_button_tapped"
    case signupSubmitted = "signup_submitted"
    case signupSuccess = "signup_success"
    case signupFailed = "signup_failed"

    // MARK: Help & Support Events
    //
    case supportHelpCenterViewed = "support_help_center_viewed"
    case supportNewRequestViewed = "support_new_request_viewed"
    case supportNewRequestCreated = "support_new_request_created"
    case supportNewRequestFailed = "support_new_request_failed"
    case supportNewRequestFileAttached = "support_new_request_file_attached"
    case supportNewRequestFileAttachmentFailed = "support_new_request_file_attachment_failed"
    case supportTicketUserReplied = "support_ticket_user_replied"
    case supportTicketUserReplyFailed = "support_ticket_user_reply_failed"
    case supportTicketListViewed = "support_ticket_list_viewed"
    case supportTicketListViewFailed = "support_ticket_list_view_failed"
    case supportTicketUserViewed = "support_ticket_user_viewed"
    case supportTicketViewFailed = "support_ticket_view_failed"
    case supportHelpCenterUserSearched = "support_help_center_user_searched"
    case supportIdentityFormViewed = "support_identity_form_viewed"
    case supportIdentitySet = "support_identity_set"
    case supportSSROpened = "support_ssr_opened"
    case supportSSRCopyButtonTapped = "support_ssr_copy_button_tapped"

    // MARK: Settings View Events
    //
    case settingsTapped = "main_menu_settings_tapped"
    case settingsSelectedStoreTapped = "settings_selected_site_tapped"
    case settingsContactSupportTapped = "main_menu_contact_support_tapped"
    case settingsDomainsTapped = "settings_domains_tapped"

    case settingsBetaFeaturesButtonTapped = "settings_beta_features_button_tapped"
    case settingsBetaFeaturesProductsToggled = "settings_beta_features_products_toggled"
    case settingsBetaFeaturesOrderAddOnsToggled = "settings_beta_features_order_addons_toggled"
    case settingsBetaFeatureToggled = "settings_beta_feature_toggled"

    case settingsPrivacySettingsTapped = "settings_privacy_settings_button_tapped"
    case settingsCollectInfoToggled = "privacy_settings_collect_info_toggled"
    case settingsReportCrashesToggled = "privacy_settings_crash_reporting_toggled"
    case settingsPrivacyPolicyTapped = "privacy_settings_privacy_policy_link_tapped"
    case settingsShareInfoLearnMoreTapped = "privacy_settings_share_info_link_tapped"
    case settingsThirdPartyLearnMoreTapped = "privacy_settings_third_party_tracking_info_link_tapped"
    case settingsLicensesLinkTapped = "settings_about_open_source_licenses_link_tapped"
    case settingsAboutLinkTapped = "settings_about_woocommerce_link_tapped"

    case settingsLogoutTapped = "settings_logout_button_tapped"
    case settingsLogoutConfirmation = "settings_logout_confirmation_dialog_result"
    case settingsWereHiringTapped = "settings_we_are_hiring_button_tapped"

    // MARK: Domain Settings
    //
    case domainSettingsStep = "custom_domains_step"
    case domainContactInfoValidationFailed = "domain_contact_info_validation_failed"
    case domainSettingsCustomDomainPurchaseSuccess = "custom_domain_purchase_success"
    case domainSettingsCustomDomainPurchaseFailed = "custom_domain_purchase_failed"

    // MARK: Card Reader Connection Events
    //
    case cardReaderSelectTypeShown = "card_present_select_reader_type_shown"
    case cardReaderSelectTypeBuiltInTapped = "card_present_select_reader_type_built_in_tapped"
    case cardReaderSelectTypeBluetoothTapped = "card_present_select_reader_type_bluetooth_tapped"
    case cardReaderDiscoveryTapped = "card_reader_discovery_tapped"
    case cardReaderDiscoveryFailed = "card_reader_discovery_failed"
    case cardReaderDiscoveredReader = "card_reader_discovery_reader_discovered"
    case cardReaderConnectionTapped = "card_reader_connection_tapped"
    case cardReaderConnectionFailed = "card_reader_connection_failed"
    case cardReaderConnectionSuccess = "card_reader_connection_success"
    case cardReaderDisconnectTapped = "card_reader_disconnect_tapped"
    case manageCardReadersBuiltInReaderAutoDisconnect = "manage_card_readers_automatic_disconnect_built_in_reader"

    // MARK: Card Reader Software Update Events
    //
    case cardReaderSoftwareUpdateTapped = "card_reader_software_update_tapped"
    case cardReaderSoftwareUpdateStarted = "card_reader_software_update_started"
    case cardReaderSoftwareUpdateSuccess = "card_reader_software_update_success"
    case cardReaderSoftwareUpdateFailed = "card_reader_software_update_failed"
    case cardReaderSoftwareUpdateCancelTapped = "card_reader_software_update_cancel_tapped"
    case cardReaderSoftwareUpdateCanceled = "card_reader_software_update_canceled"

    // MARK: Card-Present Payments Onboarding
    case cardPresentOnboardingLearnMoreTapped = "card_present_onboarding_learn_more_tapped"
    case cardPresentOnboardingNotCompleted = "card_present_onboarding_not_completed"
    case cardPresentOnboardingStepSkipped = "card_present_onboarding_step_skipped"
    case cardPresentOnboardingCtaTapped = "card_present_onboarding_cta_tapped"

    // MARK: Cash on Delivery Enable events
    case enableCashOnDeliverySuccess = "enable_cash_on_delivery_success"
    case enableCashOnDeliveryFailed = "enable_cash_on_delivery_failed"
    case disableCashOnDeliverySuccess = "disable_cash_on_delivery_success"
    case disableCashOnDeliveryFailed = "disable_cash_on_delivery_failed"
    case paymentsHubCashOnDeliveryToggled = "payments_hub_cash_on_delivery_toggled"
    case paymentsHubCashOnDeliveryToggleLearnMoreTapped = "payments_hub_cash_on_delivery_toggle_learn_more_tapped"

    // MARK: Payment Gateways selection
    case cardPresentPaymentGatewaySelected = "card_present_payment_gateway_selected"

    // MARK: Order View Events
    //
    case ordersSelected = "main_tab_orders_selected"
    case ordersReselected = "main_tab_orders_reselected"
    case ordersListPulledToRefresh = "orders_list_pulled_to_refresh"
    case ordersListSearchTapped = "orders_list_menu_search_tapped"
    case filterOrdersOptionSelected = "filter_orders_by_status_dialog_option_selected"
    case orderDetailAddNoteButtonTapped = "order_detail_add_note_button_tapped"
    case orderDetailPulledToRefresh = "order_detail_pulled_to_refresh"
    case orderNoteAddButtonTapped = "add_order_note_add_button_tapped"
    case orderNoteEmailCustomerToggled = "add_order_note_email_note_to_customer_toggled"
    case orderDetailAddTrackingButtonTapped = "order_detail_tracking_add_tracking_button_tapped"
    case orderDetailShowBillingTapped = "order_detail_customer_info_show_billing_tapped"
    case orderDetailCustomerEmailTapped = "order_detail_customer_info_email_menu_email_tapped"
    case orderDetailCustomerEmailMenuTapped = "order_detail_customer_info_email_menu_tapped"
    case orderDetailCustomerPhoneMenuTapped = "order_detail_customer_info_phone_menu_tapped"
    case orderDetailCustomerPhoneOptionTapped = "order_detail_customer_info_phone_menu_phone_tapped"
    case orderDetailCustomerSMSOptionTapped = "order_detail_customer_info_phone_menu_sms_tapped"
    case orderDetailOrderStatusEditButtonTapped = "order_detail_order_status_edit_button_tapped"
    case orderDetailRefundDetailTapped = "order_detail_refund_detail_tapped"
    case orderDetailAddOnsViewed = "order_detail_addons_viewed"
    case refundedProductsDetailTapped = "order_detail_refunded_products_detail_tapped"
    case orderDetailTrackPackageButtonTapped = "order_detail_track_package_button_tapped"
    case orderDetailTrackingDeleteButtonTapped = "order_detail_tracking_delete_button_tapped"
    case orderFulfillmentCompleteButtonTapped = "order_fulfillment_mark_order_complete_button_tapped"
    case orderMarkedCompleteUndoButtonTapped = "snack_order_marked_complete_undo_button_tapped"
    case orderShipmentTrackingAddButtonTapped = "order_shipment_tracking_add_button_tapped"
    case orderShipmentTrackingCarrierSelected = "order_shipment_tracking_carrier_selected"
    case orderShipmentTrackingCustomProviderSelected = "order_shipment_tracking_custom_provider_selected"
    case orderDetailEditFlowStarted = "order_detail_edit_flow_started"
    case orderDetailEditFlowCompleted = "order_detail_edit_flow_completed"
    case orderDetailEditFlowCanceled = "order_detail_edit_flow_canceled"
    case orderDetailEditFlowFailed = "order_detail_edit_flow_failed"
    case orderDetailPaymentLinkShared = "order_detail_payment_link_shared"

    // MARK: Order Data/Action Events
    //
    case orderOpen = "order_open"
    case orderAddNew = "orders_add_new"
    case orderNotesLoaded = "order_notes_loaded"
    case orderNoteAdd = "order_note_add"
    case orderNoteAddSuccess = "order_note_add_success"
    case orderNoteAddFailed = "order_note_add_failed"
    case orderCreateButtonTapped = "order_create_button_tapped"
    case orderCreationSuccess = "order_creation_success"
    case orderCreationFailed = "order_creation_failed"
    case orderCreationCustomerAdded = "order_creation_customer_added"
    case orderCreationCustomerSearch = "order_creation_customer_search"
    case orderContactAction = "order_contact_action"
    case orderCustomerAdd = "order_customer_add"
    case orderEditButtonTapped = "order_edit_button_tapped"
    case ordersListFilter = "orders_list_filter"
    case ordersListSearch = "orders_list_search"
    case ordersListLoaded = "orders_list_loaded"
    case orderProductAdd = "order_product_add"
    case orderProductQuantityChange = "order_product_quantity_change"
    case orderProductRemove = "order_product_remove"
    case orderStatusChange = "order_status_change"
    case orderStatusChangeSuccess = "order_status_change_success"
    case orderStatusChangeFailed = "order_status_change_failed"
    case orderStatusChangeUndo = "order_status_change_undo"
    case orderTrackingAdd = "order_tracking_add"
    case orderTrackingAddFailed = "order_tracking_add_failed"
    case orderTrackingLoaded = "order_tracking_loaded"
    case orderTrackingAddSuccess = "order_tracking_add_success"
    case orderTrackingDelete = "order_tracking_delete"
    case orderTrackingDeleteFailed = "order_tracking_delete_failed"
    case orderTrackingDeleteSuccess = "order_tracking_delete_success"
    case orderTrackingProvidersLoaded = "order_tracking_providers_loaded"
    case orderFeeAdd = "order_fee_add"
    case orderFeeRemove = "order_fee_remove"
    case orderShippingMethodAdd = "order_shipping_method_add"
    case orderShippingMethodRemove = "order_shipping_method_remove"
    case orderSyncFailed = "order_sync_failed"
    case collectPaymentTapped = "payments_flow_order_collect_payment_tapped"
    case orderViewCustomFieldsTapped = "order_view_custom_fields_tapped"
    case orderDetailWaitingTimeLoaded = "order_detail_waiting_time_loaded"

    // MARK: Order List Sorting/Filtering
    //
    case orderListViewFilterOptionsTapped = "order_list_view_filter_options_tapped"

    // MARK: Shipping Labels Events
    //
    case shippingLabelRefundRequested = "shipping_label_refund_requested"
    case shippingLabelReprintRequested = "shipping_label_print_requested"
    case shipmentTrackingMenuAction = "shipment_tracking_menu_action"
    case shippingLabelsAPIRequest = "shipping_label_api_request"

    // MARK: Shipping Labels Creation Events
    //
    case shippingLabelOrderIsEligible = "shipping_label_order_is_eligible"
    case shippingLabelPurchaseFlow = "shipping_label_purchase_flow"
    case shippingLabelOrderFulfillSucceeded = "shipping_label_order_fulfill_succeeded"
    case shippingLabelOrderFulfillFailed = "shipping_label_order_fulfill_failed"
    case shippingLabelDiscountInfoButtonTapped = "shipping_label_discount_info_button_tapped"
    case shippingLabelEditAddressOpenMapButtonTapped = "shipping_label_edit_address_open_map_button_tapped"
    case shippingLabelEditAddressDoneButtonTapped = "shipping_label_edit_address_done_button_tapped"
    case shippingLabelEditAddressUseAddressAsIsButtonTapped = "shipping_label_edit_address_use_address_as_is_button_tapped"
    case shippingLabelEditAddressContactCustomerButtonTapped = "shipping_label_edit_address_contact_customer_button_tapped"
    case shippingLabelAddressSuggestionsUseSelectedAddressButtonTapped = "shipping_label_address_suggestions_use_selected_address_button_tapped"
    case shippingLabelAddressSuggestionsEditSelectedAddressButtonTapped = "shipping_label_address_suggestions_edit_selected_address_button_tapped"
    case shippingLabelAddressValidationFailed = "shipping_label_address_validation_failed"
    case shippingLabelAddressValidationSucceeded = "shipping_label_address_validation_succeeded"
    case shippingLabelAddPackageTapped = "shipping_label_add_package_tapped"
    case shippingLabelPackageAddedSuccessfully = "shipping_label_package_added_successfully"
    case shippingLabelAddPackageFailed = "shipping_label_add_package_failed"
    case shippingLabelAddPaymentMethodTapped = "shipping_label_add_payment_method_tapped"
    case shippingLabelPaymentMethodAdded = "shipping_label_payment_method_added"
    case shippingLabelMoveItemTapped = "shipping_label_move_item_tapped"
    case shippingLabelItemMoved = "shipping_label_item_moved"

    // MARK: Receipt Events
    //
    case receiptViewTapped = "receipt_view_tapped"
    case receiptEmailTapped = "receipt_email_tapped"
    case receiptEmailFailed = "receipt_email_failed"
    case receiptEmailCanceled = "receipt_email_canceled"
    case receiptEmailSuccess = "receipt_email_success"
    case receiptPrintTapped = "receipt_print_tapped"
    case receiptPrintFailed = "receipt_print_failed"
    case receiptPrintCanceled = "receipt_print_canceled"
    case receiptPrintSuccess = "receipt_print_success"

    // MARK: Payment Events
    //
    case collectPaymentCanceled = "card_present_collect_payment_canceled"
    case collectPaymentFailed = "card_present_collect_payment_failed"
    case collectPaymentSuccess = "card_present_collect_payment_success"
    case collectInteracPaymentSuccess = "card_interac_collect_payment_success"
    case interacRefundSuccess = "interac_refund_success"
    case interacRefundFailed = "interac_refund_failed"
    case interacRefundCanceled = "interac_refund_cancelled"

    // MARK: Push Notifications Events
    //
    case pushNotificationReceived = "push_notification_received"
    case pushNotificationAlertPressed = "push_notification_alert_pressed"
    case pushNotificationOSAlertAllowed = "push_notification_os_alert_allowed"
    case pushNotificationOSAlertDenied = "push_notification_os_alert_denied"
    case pushNotificationOSAlertShown = "push_notification_os_alert_shown"
    case viewInAppPushNotificationPressed = "view_in_app_push_notification_pressed"

    // MARK: Notification View Events
    //
    case notificationsSelected = "main_tab_notifications_selected"
    case notificationsReselected = "main_tab_notifications_reselected"
    case notificationOpened = "notification_open"
    case notificationsListPulledToRefresh = "notifications_list_pulled_to_refresh"
    case notificationsListReadAllTapped = "notifications_list_menu_mark_read_button_tapped"
    case notificationsListFilterTapped = "notifications_list_menu_filter_tapped"
    case filterNotificationsOptionSelected = "filter_notifications_by_status_dialog_option_selected"
    case notificationReviewApprovedTapped = "review_detail_approve_button_tapped"
    case notificationReviewTrashTapped = "review_detail_trash_button_tapped"
    case notificationReviewSpamTapped = "review_detail_spam_button_tapped"
    case notificationShareStoreButtonTapped = "notifications_share_your_store_button_tapped"

    // MARK: Review View Events
    //
    case reviewsListPulledToRefresh = "reviews_list_pulled_to_refresh"
    case reviewsListReadAllTapped = "reviews_list_menu_mark_read_button_tapped"
    case reviewsShareStoreButtonTapped = "reviews_share_your_store_button_tapped"

    // MARK: Notification Data/Action Events
    //
    case notificationListLoaded = "notifications_loaded"
    case notificationsLoadFailed = "notifications_load_failed"
    case notificationListFilter = "notifications_filter"
    case notificationReviewAction = "review_action"
    case notificationReviewActionSuccess = "review_action_success"
    case notificationReviewActionFailed = "review_action_failed"
    case notificationReviewActionUndo = "review_action_undo"

    // MARK: Review Data/Action Events
    //
    case reviewOpen = "review_open"
    case reviewLoaded = "review_loaded"
    case reviewLoadFailed = "review_load_failed"
    case reviewMarkRead = "review_mark_read"
    case reviewMarkReadSuccess = "review_mark_read_success"
    case reviewMarkReadFailed = "review_mark_read_failed"
    case reviewsListLoaded = "reviews_loaded"
    case reviewsListLoadFailed = "reviews_load_failed"
    case reviewsMarkAllRead = "reviews_mark_all_read"
    case reviewsMarkAllReadSuccess = "reviews_mark_all_read_success"
    case reviewsMarkAllReadFailed = "reviews_mark_all_read_failed"
    case reviewsProductsLoaded = "reviews_products_loaded"
    case reviewsProductsLoadFailed = "reviews_products_load_failed"
    case reviewReplySend = "review_reply_send"
    case reviewReplySendSuccess = "review_reply_send_success"
    case reviewReplySendFailed = "review_reply_send_failed"

    // MARK: Product List Events
    //
    case productListSelected = "main_tab_products_selected"
    case productListReselected = "main_tab_products_reselected"
    case productListLoaded = "product_list_loaded"
    case productListLoadError = "product_list_load_error"
    case productListProductTapped = "product_list_product_tapped"
    case productListPulledToRefresh = "product_list_pulled_to_refresh"
    case productListSearched = "product_list_searched"
    case productListMenuSearchTapped = "product_list_menu_search_tapped"
    case productListAddProductTapped = "product_list_add_product_button_tapped"
    case productListClearFiltersTapped = "product_list_clear_filters_button_tapped"

    // MARK: Product List Bulk Editing Events
    //
    case productListBulkUpdateRequested = "product_list_bulk_update_requested"
    case productListBulkUpdateConfirmed = "product_list_bulk_update_confirmed"
    case productListBulkUpdateSuccess = "product_list_bulk_update_success"
    case productListBulkUpdateFailure = "product_list_bulk_update_failure"
    case productListBulkUpdateSelectAllTapped = "product_list_bulk_update_select_all_tapped"

    // MARK: Add Product Events
    //
    case addProductCreationTypeSelected = "add_product_creation_type_selected"
    case addProductTypeSelected = "add_product_product_type_selected"
    case addProductPublishTapped = "add_product_publish_tapped"
    case addProductSaveAsDraftTapped = "add_product_save_as_draft_tapped"
    case addProductSuccess = "add_product_success"
    case addProductFailed = "add_product_failed"

    // MARK: Duplicate Product events
    case duplicateProductSuccess = "duplicate_product_success"
    case duplicateProductFailed = "duplicate_product_failed"

    // MARK: Edit Product Events
    //
    case productDetailLoaded = "product_detail_loaded"
    case productDetailUpdateButtonTapped = "product_detail_update_button_tapped"
    case productDetailUpdateSuccess = "product_detail_update_success"
    case productDetailUpdateError = "product_detail_update_error"
    case productDetailViewProductNameTapped = "product_detail_view_product_name_tapped"
    case productDetailViewProductDescriptionTapped = "product_detail_view_product_description_tapped"
    case productDetailViewPriceSettingsTapped = "product_detail_view_price_settings_tapped"
    case productDetailViewShippingSettingsTapped = "product_detail_view_shipping_settings_tapped"
    case productDetailViewInventorySettingsTapped = "product_detail_view_inventory_settings_tapped"
    case productDetailViewCategoriesTapped = "product_detail_view_categories_tapped"
    case productDetailViewTagsTapped = "product_detail_view_tags_tapped"
    case productDetailViewReviewsTapped = "product_detail_view_product_reviews_tapped"
    case productDetailViewProductTypeTapped = "product_detail_view_product_type_tapped"
    case productDetailViewGroupedProductsTapped = "product_detail_view_grouped_products_tapped"
    case productDetailViewExternalProductLinkTapped = "product_detail_view_external_product_link_tapped"
    case productDetailViewSKUTapped = "product_detail_view_sku_tapped"
    case productDetailViewVariationsTapped = "product_detail_view_product_variants_tapped"
    case productDescriptionDoneButtonTapped = "product_description_done_button_tapped"
    case productPriceSettingsDoneButtonTapped = "product_price_settings_done_button_tapped"
    case productShippingSettingsDoneButtonTapped = "product_shipping_settings_done_button_tapped"
    case productInventorySettingsDoneButtonTapped = "product_inventory_settings_done_button_tapped"
    case productDetailViewDownloadableFilesTapped = "product_detail_view_downloadable_files_tapped"
    case productDetailViewLinkedProductsTapped = "product_detail_view_linked_products_tapped"
    case productDetailProductDeleted = "product_detail_product_deleted"
    case productDetailViewProductAddOnsTapped = "product_detail_view_product_addons_tapped"
    case productInventorySettingsSKUScannerButtonTapped = "product_inventory_settings_sku_scanner_button_tapped"
    case productInventorySettingsSKUScanned = "product_inventory_settings_sku_scanned"
    case productDetailPreviewTapped = "product_detail_preview_tapped"
    case productDetailPreviewFailed = "product_detail_preview_failed"

    // MARK: Edit Product Variation Events
    //
    case productVariationDetailViewDescriptionTapped = "product_variation_view_variation_description_tapped"
    case productVariationDetailViewImageTapped = "product_variation_image_tapped"
    case productVariationDetailViewStatusSwitchTapped = "product_variation_view_variation_visibility_switch_tapped"
    case productVariationDetailViewPriceSettingsTapped = "product_variation_view_price_settings_tapped"
    case productVariationDetailViewInventorySettingsTapped = "product_variation_view_inventory_settings_tapped"
    case productVariationDetailViewShippingSettingsTapped = "product_variation_view_shipping_settings_tapped"
    case productVariationDetailUpdateButtonTapped = "product_variation_update_button_tapped"
    case productVariationDetailUpdateSuccess = "product_variation_update_success"
    case productVariationDetailUpdateError = "product_variation_update_error"

    case productVariationBulkUpdateSectionTapped = "product_variation_bulk_update_section_tapped"
    case productVariationBulkUpdateFieldTapped = "product_variation_bulk_update_field_tapped"
    case productVariationBulkUpdateFieldSuccess = "product_variation_bulk_update_field_success"
    case productVariationBulkUpdateFieldFail = "product_variation_bulk_update_field_fail"

    // MARK: Product Images Events
    //
    case productImageSettingsDoneButtonTapped = "product_image_settings_done_button_tapped"
    case productDetailAddImageTapped = "product_detail_add_image_tapped"
    case productImageSettingsAddImagesButtonTapped = "product_image_settings_add_images_button_tapped"
    case productImageSettingsAddImagesSourceTapped = "product_image_settings_add_images_source_tapped"
    case productImageSettingsDeleteImageButtonTapped = "product_image_settings_delete_image_button_tapped"
    case productImageUploadFailed = "product_image_upload_failed"
    case savingProductAfterBackgroundImageUploadSuccess = "saving_product_after_background_image_upload_success"
    case savingProductAfterBackgroundImageUploadFailed = "saving_product_after_background_image_upload_failed"
    case failureSavingProductAfterImageUploadNoticeShown = "failure_saving_product_after_image_upload_notice_shown"
    case failureSavingProductAfterImageUploadNoticeTapped = "failure_saving_product_after_image_upload_notice_tapped"
    case failureUploadingImageNoticeShown = "failure_uploading_image_notice_shown"
    case failureUploadingImageNoticeTapped = "failure_uploading_image_notice_tapped"

    // Product Categories Events
    //
    case productCategoryListLoaded = "product_categories_loaded"
    case productCategoryListLoadFailed = "product_categories_load_failed"
    case productCategorySettingsDoneButtonTapped = "product_category_settings_done_button_tapped"
    case productCategorySettingsAddButtonTapped = "product_category_settings_add_button_tapped"
    case productCategorySettingsSaveNewCategoryTapped = "add_product_category_save_tapped"

    // Product Tags Events
    //
    case productTagListLoaded = "product_tags_loaded"
    case productTagListLoadFailed = "product_tags_load_failed"
    case productTagSettingsDoneButtonTapped = "product_tag_settings_done_button_tapped"

    // Product Reviews Events
    //
    case productReviewListLoaded = "product_reviews_loaded"
    case productReviewListLoadFailed = "product_reviews_load_failed"

    // Edit Linked and Grouped Products Events
    //
    case connectedProductsList = "connected_products_list"
    case linkedProducts = "linked_products"

    // Edit Downloadable Products Events
    case productDownloadableFilesSettingsChanged = "product_downloadable_files_settings_changed"
    case productsDownloadableFile = "products_downloadable_file"

    // Edit External/Affiliate Product Event
    //
    case externalProductLinkSettingsDoneButtonTapped = "external_product_link_settings_done_button_tapped"

    // Edit Product SKU Events
    //
    case productSKUDoneButtonTapped = "product_sku_done_button_tapped"

    // Product Type Event
    //
    case productTypeChanged = "product_type_change_tapped"

    // Product More Menu
    //
    case productDetailViewProductButtonTapped = "product_detail_view_external_tapped"
    case productDetailShareButtonTapped = "product_detail_share_button_tapped"

    // MARK: Product Settings
    //
    case productDetailViewSettingsButtonTapped = "product_detail_view_settings_button_tapped"
    case productDetailDuplicateButtonTapped = "product_detail_duplicate_button_tapped"
    case productSettingsDoneButtonTapped = "product_settings_done_button_tapped"
    case productSettingsStatusTapped = "product_settings_status_tapped"
    case productSettingsVisibilityTapped = "product_settings_visibility_tapped"
    case productSettingsCatalogVisibilityTapped = "product_settings_catalog_visibility_tapped"
    case productDetailViewShortDescriptionTapped = "product_detail_view_short_description_tapped"
    case productShortDescriptionDoneButtonTapped = "product_short_description_done_button_tapped"
    case productSettingsSlugTapped = "product_settings_slug_tapped"
    case productSettingsPurchaseNoteTapped = "product_settings_purchase_note_tapped"
    case productSettingsMenuOrderTapped = "product_settings_menu_order_tapped"
    case productSettingsVirtualToggled = "product_settings_virtual_toggled"
    case productSettingsReviewsToggled = "product_settings_reviews_toggled"

    // MARK: Product List Sorting/Filtering
    //
    case productListViewSortingOptionsTapped = "product_list_view_sorting_options_tapped"
    case productSortingListOptionSelected = "product_sorting_list_option_selected"
    case productListViewFilterOptionsTapped = "product_list_view_filter_options_tapped"
    case productFilterListShowProductsButtonTapped = "product_filter_list_show_products_button_tapped"
    case productFilterListClearMenuButtonTapped = "product_filter_list_clear_menu_button_tapped"
    case productFilterListDismissButtonTapped = "product_filter_list_dismiss_button_tapped"

    // MARK: Readonly Product Variations Events
    //
    case productVariationListLoaded = "product_variants_loaded"
    case productVariationListLoadError = "product_variants_load_error"
    case productVariationListPulledToRefresh = "product_variants_pulled_to_refresh"
    case productVariationListVariationTapped = "product_variation_view_variation_detail_tapped"

    // MARK: Aztec editor
    //
    case aztecEditorDoneButtonTapped = "aztec_editor_done_button_tapped"

    // MARK: Jetpack Tunnel Events
    //
    case jetpackTunnelTimeout = "jetpack_tunnel_timeout"

    // MARK: In-app Feedback and Survey Events
    //
    // (https://git.io/JJpb2)
    //
    case appFeedbackPrompt = "app_feedback_prompt"
    case surveyScreen = "survey_screen"
    case featureFeedbackBanner = "feature_feedback_banner"

    // MARK: Issue Refund events
    //
    case refundCreate = "refund_create"
    case refundCreateFailed = "refund_create_failed"
    case refundCreateSuccess = "refund_create_success"
    case createOrderRefundSelectAllItemsButtonTapped = "create_order_refund_select_all_items_button_tapped"
    case createOrderRefundItemQuantityDialogOpened = "create_order_refund_item_quantity_dialog_opened"
    case createOrderRefundNextButtonTapped = "create_order_refund_next_button_tapped"
    case createOrderRefundSummaryRefundButtonTapped = "create_order_refund_summary_refund_button_tapped"
    case createOrderRefundShippingOptionTapped = "create_order_refund_shipping_option_tapped"

    // MARK: Add Variations events
    //
    case addFirstVariationButtonTapped = "add_first_variation_button_tapped"
    case addMoreVariationsButtonTapped = "add_more_variations_button_tapped"
    case createProductVariation = "create_product_variation"
    case createProductVariationSuccess = "create_product_variation_success"
    case createProductVariationFailed = "create_product_variation_fail"
    case removeProductVariationButtonTapped = "remove_product_variation_button_tapped"
    case editProductAttributesButtonTapped = "edit_product_attributes_button_tapped"
    case addProductAttributeButtonTapped = "add_product_attribute_button_tapped"
    case updateProductAttribute = "create_product_attribute"
    case updateProductAttributeSuccess = "update_product_attribute_success"
    case updateProductAttributeFail = "update_product_attribute_fail"
    case renameProductAttributeButtonTapped = "rename_product_attribute_button_tapped"
    case removeProductAttributeButtonTapped = "remove_product_attribute_button_tapped"
    case editProductVariationAttributeOptionsRowTapped = "edit_product_variation_attribute_options_row_tapped"
    case editProductVariationAttributeOptionsDoneButtonTapped = "edit_product_variation_attribute_options_done_button_tapped"

    case productVariationGenerationRequested = "product_variation_generation_requested"
    case productVariationGenerationLimitReached = "product_variation_generation_limit_reached"
    case productVariationGenerationConfirmed = "product_variation_generation_confirmed"
    case productVariationGenerationSuccess = "product_variation_generation_success"
    case productVariationGenerationFailure = "product_variation_generation_failure"

    // MARK: What's New Component events
    //
    case featureAnnouncementShown = "feature_announcement_shown"

    // MARK: Feature Card events
    case featureCardShown = "feature_card_shown"
    case featureCardDismissed = "feature_card_dismissed"
    case featureCardCtaTapped = "feature_card_cta_tapped"

    // MARK: In-Person Payments survey feedback events
    case inPersonPaymentsBannerShown = "survey_banner_shown"
    case inPersonPaymentsBannerTapped = "survey_banner_cta_tapped"
    case inPersonPaymentsBannerDismissed = "survey_banner_dismissed"

    // MARK: Just In Time Messages events
    case justInTimeMessageCallToActionTapped = "jitm_cta_tapped"
    case justInTimeMessageDismissTapped = "jitm_dismissed"
    case justInTimeMessageDismissSuccess = "jitm_dismiss_success"
    case justInTimeMessageDismissFailure = "jitm_dismiss_failure"
    case justInTimeMessageFetchSuccess = "jitm_fetch_success"
    case justInTimeMessageFetchFailure = "jitm_fetch_failure"
    case justInTimeMessageDisplayed = "jitm_displayed"

    // MARK: Simple Payments events
    //
    case simplePaymentsFlowStarted = "simple_payments_flow_started"
    case simplePaymentsFlowNoteAdded = "simple_payments_flow_note_added"
    case simplePaymentsFlowTaxesToggled = "simple_payments_flow_taxes_toggled"

    // MARK: Payment Methods events
    //
    case paymentsFlowCompleted = "payments_flow_completed"
    case paymentsFlowCanceled = "payments_flow_canceled"
    case paymentsFlowFailed = "payments_flow_failed"
    case paymentsFlowCollect = "payments_flow_collect"

    // MARK: Jetpack-the-plugin events
    //
    case jetpackBenefitsBanner = "feature_jetpack_benefits_banner"
    case jetpackInstallButtonTapped = "jetpack_install_button_tapped"
    case jetpackCPSitesFetched = "jetpack_cp_sites_fetched"
    case jetpackInstallGetStartedButtonTapped = "jetpack_install_get_started_button_tapped"
    case jetpackInstallSucceeded = "jetpack_install_succeeded"
    case jetpackInstallFailed = "jetpack_install_failed"
    case jetpackInstallInWPAdminButtonTapped = "jetpack_install_in_wpadmin_button_tapped"
    case jetpackInstallContactSupportButtonTapped = "jetpack_install_contact_support_button_tapped"

    // MARK: Hub Menu
    //
    case hubMenuTabSelected = "main_tab_hub_menu_selected"
    case hubMenuTabReselected = "main_tab_hub_menu_reselected"
    case hubMenuSwitchStoreTapped = "hub_menu_switch_store_tapped"
    case hubMenuOptionTapped = "hub_menu_option_tapped"
    case hubMenuSettingsTapped = "hub_menu_settings_tapped"

    // MARK: Coupons
    case couponsLoaded = "coupons_loaded"
    case couponsLoadedFailed = "coupons_loaded_failed"
    case couponsListSearchTapped = "coupons_list_search_tapped"
    case couponsListCreateTapped = "coupons_list_create_tapped"
    case couponDetails = "coupon_details"
    case couponSettingDisabled = "coupon_settings_disabled"
    case couponSettingEnabled = "coupon_settings_enabled"
    case couponDeleteSuccess = "coupon_delete_success"
    case couponDeleteFailed = "coupon_delete_failed"
    case couponUpdateInitiated = "coupon_update_initiated"
    case couponUpdateSuccess = "coupon_update_success"
    case couponUpdateFailed = "coupon_update_failed"
    case couponCreationInitiated = "coupon_creation_initiated"
    case couponCreationSuccess = "coupon_creation_success"
    case couponCreationFailed = "coupon_creation_failed"
    case couponCreationSuccessShareTapped = "coupon_creation_success_share_tapped"

    // MARK: Inbox Notes
    case inboxNotesLoaded = "inbox_notes_loaded"
    case inboxNotesLoadedFailed = "inbox_notes_load_failed"
    case inboxNoteAction = "inbox_note_action"

    // MARK: Close Account
    case closeAccountTapped = "close_account_tapped"
    case closeAccountSuccess = "close_account_success"
    case closeAccountFailed = "close_account_failed"

    // MARK: Login Jetpack setup
    case loginJetpackSetupButtonTapped = "login_jetpack_setup_button_tapped"
    case loginJetpackSetupDismissed = "login_jetpack_setup_dismissed"
    case loginJetpackSetupCompleted = "login_jetpack_setup_completed"
    case loginJetpackSetupFlow = "login_jetpack_setup_flow"

    // MARK: Login WooCommerce setup
    case loginWooCommerceErrorShown = "login_woocommerce_error_shown"
    case loginWooCommerceSetupButtonTapped = "login_woocommerce_setup_button_tapped"
    case loginWooCommerceSetupDismissed = "login_woocommerce_setup_dismissed"
    case loginWooCommerceSetupCompleted = "login_woocommerce_setup_completed"

    // MARK: Payments Menu
    case paymentsMenuCollectPaymentTapped = "payments_hub_collect_payment_tapped"
    case paymentsMenuOnboardingErrorTapped = "payments_hub_onboarding_error_tapped"
    case paymentsMenuOrderCardReaderTapped = "payments_hub_order_card_reader_tapped"
    case paymentsMenuCardReadersManualsTapped = "payments_hub_card_readers_manuals_tapped"
    case paymentsMenuManageCardReadersTapped = "payments_hub_manage_card_readers_tapped"
    case paymentsMenuPaymentProviderTapped = "settings_card_present_select_payment_gateway_tapped"
    case inPersonPaymentsLearnMoreTapped = "in_person_payments_learn_more_tapped"
    case setUpTapToPayOnIPhoneTapped = "set_up_tap_to_pay_on_iphone_tapped"

    // MARK: Payments Menu
    case pluginsNotSyncedYet = "plugins_not_synced_yet"

    // MARK: Universal Links
    case universalLinkOpened = "universal_link_opened"
    case universalLinkFailed = "universal_link_failed"

    // MARK: Login Jetpack Connection
    case loginJetpackConnectionErrorShown = "login_jetpack_connection_error_shown"
    case loginJetpackConnectButtonTapped = "login_jetpack_connect_button_tapped"
    case loginJetpackConnectCompleted = "login_jetpack_connect_completed"
    case loginJetpackConnectDismissed = "login_jetpack_connect_dismissed"
    case loginJetpackConnectionURLFetchFailed = "login_jetpack_connection_url_fetch_failed"
    case loginJetpackConnectionVerificationFailed = "login_jetpack_connection_verification_failed"

    // MARK: Widgets
    case widgetTapped = "widget_tapped"

    // MARK: Application password Events
    case applicationPasswordsNewPasswordCreated = "application_passwords_new_password_created"
    case applicationPasswordsGenerationFailed = "application_passwords_generation_failed"
}

public extension WooAnalyticsStat {


    /// Indicates if site information should be included with this event when it's sent to the tracks server.
    /// Returns `true` if it should be included, `false` otherwise.
    ///
    /// Note: Currently all application-level and authentication events will return false. If you wish
    /// to include additional no-site-info events, please add them here.
    ///
    var shouldSendSiteProperties: Bool {
        switch self {
        // Application events
        case .applicationClosed, .applicationOpened, .applicationUpgraded, .applicationInstalled:
            return false
        // Authentication Events
        case .signedIn, .logout, .openedLogin, .loginFailed,
             .loginAutoFillCredentialsFilled, .loginAutoFillCredentialsUpdated, .loginEmailFormViewed, .loginMagicLinkOpenEmailClientViewed,
             .loginMagicLinkRequestFormViewed, .loginMagicLinkExited, .loginMagicLinkFailed, .loginMagicLinkOpened,
             .loginMagicLinkRequested, .loginMagicLinkSucceeded, .loginPasswordFormViewed, .loginURLFormViewed,
             .loginURLHelpScreenViewed, .loginUsernamePasswordFormViewed, .loginTwoFactorFormViewed, .loginEpilogueViewed,
             .loginProloguePaged, .loginPrologueViewed,
             .loginPrologueContinueTapped, .loginPrologueJetpackInstructions, .loginForgotPasswordClicked, .loginSocialButtonClick,
             .loginSocialButtonFailure, .loginSocialConnectSuccess, .loginSocialConnectFailure, .loginSocialSuccess,
             .loginSocialFailure, .loginSocial2faNeeded, .loginSocialAccountsNeedConnecting, .loginSocialErrorUnknownUser,
             .onePasswordFailed, .onePasswordLogin, .onePasswordSignup, .twoFactorCodeRequested, .twoFactorSentSMS,
             .loginJetpackRequiredScreenViewed, .loginJetpackRequiredViewInstructionsButtonTapped,
             .loginWhatIsJetpackHelpScreenViewed, .loginWhatIsJetpackHelpScreenOkButtonTapped,
             .loginWhatIsJetpackHelpScreenLearnMoreButtonTapped:
            return false
        default:
            return true
        }
    }

    /// Converts the provided WPAnalyticsStat into a WooAnalyticsStat.
    /// This whole process kinda stinks, but we need this for the `WordPressAuthenticatorDelegate`
    /// implementation. ☹️ Feel free to refactor later on!
    ///
    /// - Parameter stat: The WPAnalyticsStat to convert
    /// - Returns: The corresponding WooAnalyticsStat or nil if it cannot be converted
    ///
    static func valueOf(stat: WPAnalyticsStat) -> WooAnalyticsStat? {
        var wooEvent: WooAnalyticsStat? = nil

        switch stat {
        case .signedIn:
            wooEvent = WooAnalyticsStat.signedIn
        case .signedInToJetpack:
            wooEvent = WooAnalyticsStat.signedIn
        case .logout:
            wooEvent = WooAnalyticsStat.logout
        case .openedLogin:
            wooEvent = WooAnalyticsStat.openedLogin
        case .loginFailed:
            wooEvent = WooAnalyticsStat.loginFailed
        case .loginAutoFillCredentialsFilled:
            wooEvent = WooAnalyticsStat.loginAutoFillCredentialsFilled
        case .loginAutoFillCredentialsUpdated:
            wooEvent = WooAnalyticsStat.loginAutoFillCredentialsUpdated
        case .loginProloguePaged:
            wooEvent = WooAnalyticsStat.loginProloguePaged
        case .loginPrologueViewed:
            wooEvent = WooAnalyticsStat.loginPrologueViewed
        case .loginEmailFormViewed:
            wooEvent = WooAnalyticsStat.loginEmailFormViewed
        case .loginMagicLinkOpenEmailClientViewed:
            wooEvent = WooAnalyticsStat.loginMagicLinkOpenEmailClientViewed
        case .loginMagicLinkRequestFormViewed:
            wooEvent = WooAnalyticsStat.loginMagicLinkRequestFormViewed
        case .loginMagicLinkExited:
            wooEvent = WooAnalyticsStat.loginMagicLinkExited
        case .loginMagicLinkFailed:
            wooEvent = WooAnalyticsStat.loginMagicLinkFailed
        case .loginMagicLinkOpened:
            wooEvent = WooAnalyticsStat.loginMagicLinkOpened
        case .loginMagicLinkRequested:
            wooEvent = WooAnalyticsStat.loginMagicLinkRequested
        case .loginMagicLinkSucceeded:
            wooEvent = WooAnalyticsStat.loginMagicLinkSucceeded
        case .loginPasswordFormViewed:
             wooEvent = WooAnalyticsStat.loginPasswordFormViewed
        case .loginURLFormViewed:
            wooEvent = WooAnalyticsStat.loginURLFormViewed
        case .loginURLHelpScreenViewed:
            wooEvent = WooAnalyticsStat.loginURLHelpScreenViewed
        case .loginUsernamePasswordFormViewed:
            wooEvent = WooAnalyticsStat.loginUsernamePasswordFormViewed
        case .loginTwoFactorFormViewed:
            wooEvent = WooAnalyticsStat.loginTwoFactorFormViewed
        case .loginEpilogueViewed:
            wooEvent = WooAnalyticsStat.loginEpilogueViewed
        case .loginForgotPasswordClicked:
            wooEvent = WooAnalyticsStat.loginForgotPasswordClicked
        case .loginSocialButtonClick:
            wooEvent = WooAnalyticsStat.loginSocialButtonClick
        case .loginSocialButtonFailure:
            wooEvent = WooAnalyticsStat.loginSocialButtonFailure
        case .loginSocialConnectSuccess:
            wooEvent = WooAnalyticsStat.loginSocialConnectSuccess
        case .loginSocialConnectFailure:
            wooEvent = WooAnalyticsStat.loginSocialConnectFailure
        case .loginSocialSuccess:
            wooEvent = WooAnalyticsStat.loginSocialSuccess
        case .loginSocialFailure:
            wooEvent = WooAnalyticsStat.loginSocialFailure
        case .loginSocial2faNeeded:
            wooEvent = WooAnalyticsStat.loginSocial2faNeeded
        case .loginSocialAccountsNeedConnecting:
            wooEvent = WooAnalyticsStat.loginSocialAccountsNeedConnecting
        case .loginSocialErrorUnknownUser:
            wooEvent = WooAnalyticsStat.loginSocialErrorUnknownUser
        case .onePasswordFailed:
            wooEvent = WooAnalyticsStat.onePasswordFailed
        case .onePasswordLogin:
            wooEvent = WooAnalyticsStat.onePasswordLogin
        case .onePasswordSignup:
            wooEvent = WooAnalyticsStat.onePasswordSignup
        case .twoFactorCodeRequested:
            wooEvent = WooAnalyticsStat.twoFactorCodeRequested
        case .twoFactorSentSMS:
            wooEvent = WooAnalyticsStat.twoFactorSentSMS
        default:
            wooEvent = nil
        }

        return wooEvent
    }
}
