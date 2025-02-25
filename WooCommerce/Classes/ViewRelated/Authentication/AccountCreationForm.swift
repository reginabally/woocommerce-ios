import SwiftUI
import enum WordPressAuthenticator.SignInSource
import struct WordPressAuthenticator.NavigateToEnterAccount

/// Hosting controller that wraps an `AccountCreationForm`.
final class AccountCreationFormHostingController: UIHostingController<AccountCreationForm> {
    private let analytics: Analytics

    init(viewModel: AccountCreationFormViewModel,
         signInSource: SignInSource,
         analytics: Analytics = ServiceLocator.analytics,
         completion: @escaping () -> Void) {
        self.analytics = analytics
        super.init(rootView: AccountCreationForm(viewModel: viewModel))

        // Needed because a `SwiftUI` cannot be dismissed when being presented by a UIHostingController.
        rootView.completion = {
            completion()
        }

        rootView.loginButtonTapped = { [weak self] in
            guard let self else { return }

            self.analytics.track(event: .StoreCreation.signupFormLoginTapped())

            let command = NavigateToEnterAccount(signInSource: signInSource)
            command.execute(from: self)
        }
    }

    required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

/// A form that allows the user to create a WPCOM account with an email and password.
struct AccountCreationForm: View {
    private enum Field: Hashable {
        case email
        case password
    }

    /// Triggered when the account is created and the app is authenticated.
    var completion: (() -> Void) = {}

    /// Triggered when the user taps on the login CTA.
    var loginButtonTapped: (() -> Void) = {}

    @ObservedObject private var viewModel: AccountCreationFormViewModel

    @State private var isPerformingTask = false
    @State private var tosURL: URL?

    @FocusState private var focusedField: Field?

    init(viewModel: AccountCreationFormViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Layout.verticalSpacing) {
                // Header.
                VStack(alignment: .leading, spacing: Layout.horizontalSpacing) {
                    // Title label.
                    Text(Localization.title)
                        .largeTitleStyle()
                    VStack(alignment: .leading, spacing: 0) {
                        // Subtitle label.
                        Text(Localization.subtitle)
                            .foregroundColor(Color(.secondaryLabel))
                            .bodyStyle()
                        HStack(alignment: .firstTextBaseline) {
                            // Login subtitle label.
                            Text(Localization.loginSubtitle)
                                .foregroundColor(Color(.secondaryLabel))
                                .bodyStyle()

                            // Login button.
                            Button(Localization.loginButtonTitle) {
                                loginButtonTapped()
                            }
                            .buttonStyle(TextButtonStyle())
                            .disabled(isPerformingTask)
                        }
                    }
                }

                // Form fields.
                VStack(spacing: Layout.verticalSpacingBetweenFields) {
                    // Email field.
                    AccountCreationFormFieldView(viewModel: .init(header: Localization.emailFieldTitle,
                                                                  placeholder: Localization.emailFieldPlaceholder,
                                                                  keyboardType: .emailAddress,
                                                                  text: $viewModel.email,
                                                                  isSecure: false,
                                                                  errorMessage: viewModel.emailErrorMessage,
                                                                  isFocused: focusedField == .email))
                    .focused($focusedField, equals: .email)
                    .disabled(isPerformingTask)

                    // Password field.
                    AccountCreationFormFieldView(viewModel: .init(header: Localization.passwordFieldTitle,
                                                                  placeholder: Localization.passwordFieldPlaceholder,
                                                                  keyboardType: .default,
                                                                  text: $viewModel.password,
                                                                  isSecure: true,
                                                                  errorMessage: viewModel.passwordErrorMessage,
                                                                  isFocused: focusedField == .password))
                    .focused($focusedField, equals: .password)
                    .disabled(isPerformingTask)

                    // Terms of Service link.
                    AttributedText(tosAttributedText, enablesLinkUnderline: true)
                        .attributedTextLinkColor(Color(.secondaryLabel))
                        .environment(\.customOpenURL) { url in
                            tosURL = url
                        }
                        .safariSheet(url: $tosURL)
                }

                // CTA to submit the form.
                Button(Localization.submitButtonTitle.localizedCapitalized) {
                    Task { @MainActor in
                        isPerformingTask = true
                        let createAccountCompleted = (try? await viewModel.createAccount()) != nil
                        isPerformingTask = false

                        if createAccountCompleted {
                            completion()
                        }
                    }
                }
                .buttonStyle(PrimaryLoadingButtonStyle(isLoading: isPerformingTask))
                .disabled(!(viewModel.isEmailValid && viewModel.isPasswordValid) || isPerformingTask)
            }
            .padding(.init(top: 0, leading: Layout.horizontalSpacing, bottom: 0, trailing: Layout.horizontalSpacing))
        }
    }
}

private extension AccountCreationForm {
    var tosAttributedText: NSAttributedString {
        let result = NSMutableAttributedString(
            string: .localizedStringWithFormat(Localization.tosFormat, Localization.tos),
            attributes: [
                .foregroundColor: UIColor.secondaryLabel,
                .font: UIFont.caption1
            ]
        )
        result.replaceFirstOccurrence(
            of: Localization.tos,
            with: NSAttributedString(
                string: Localization.tos,
                attributes: [
                    .font: UIFont.caption1,
                    .link: Constants.tosURL,
                    .underlineStyle: NSUnderlineStyle.single.rawValue
                ]
            ))
        return result
    }

    enum Constants {
        static let tosURL = WooConstants.URLs.termsOfService.asURL()
    }

    enum Localization {
        static let title = NSLocalizedString("Get started in minutes", comment: "Title for the account creation form.")
        static let subtitle = NSLocalizedString("First, let’s create your account.", comment: "Subtitle for the account creation form.")
        static let loginSubtitle = NSLocalizedString("Already registered?", comment: "Subtitle for the login button on the account creation form.")
        static let loginButtonTitle = NSLocalizedString("Log in", comment: "Title of the login button on the account creation form.")
        static let emailFieldTitle = NSLocalizedString("Your email address", comment: "Title of the email field on the account creation form.")
        static let emailFieldPlaceholder = NSLocalizedString("Email address", comment: "Placeholder of the email field on the account creation form.")
        static let passwordFieldTitle = NSLocalizedString("Choose a password", comment: "Title of the password field on the account creation form.")
        static let passwordFieldPlaceholder = NSLocalizedString("Password", comment: "Placeholder of the password field on the account creation form.")
        static let tosFormat = NSLocalizedString("By continuing, you agree to our %1$@.", comment: "Terms of service format on the account creation form.")
        static let tos = NSLocalizedString("Terms of Service", comment: "Terms of service link on the account creation form.")
        static let submitButtonTitle = NSLocalizedString("Get started", comment: "Title of the submit button on the account creation form.")
    }

    enum Layout {
        static let verticalSpacing: CGFloat = 40
        static let verticalSpacingBetweenFields: CGFloat = 16
        static let horizontalSpacing: CGFloat = 16
    }
}

struct AccountCreationForm_Previews: PreviewProvider {
    static var previews: some View {
        AccountCreationForm(viewModel: .init())
            .preferredColorScheme(.light)

        AccountCreationForm(viewModel: .init())
            .preferredColorScheme(.dark)
            .dynamicTypeSize(.xxxLarge)
    }
}
