import Foundation
import UIKit
import Yosemite

/// This view controller is used when a reader is currently connected. It assists
/// the merchant in updating and/or disconnecting from the reader, as needed.
///
final class CardReaderSettingsConnectedViewController: UIViewController, CardReaderSettingsViewModelPresenter {

    /// Main TableView
    ///
    @IBOutlet weak private var tableView: UITableView!

    /// ViewModel
    ///
    private var viewModel: BluetoothCardReaderSettingsConnectedViewModel?

    /// Table Sections to be rendered
    ///
    private var sections = [Section]()

    private let settingsAlerts = CardReaderSettingsAlerts()

    /// Accept our viewmodel
    ///
    func configure(viewModel: CardReaderSettingsPresentedViewModel) {
        self.viewModel = viewModel as? BluetoothCardReaderSettingsConnectedViewModel

        guard self.viewModel != nil else {
            DDLogError("Unexpectedly unable to downcast to CardReaderSettingsConnectedViewModel")
            return
        }

        self.viewModel?.didUpdate = onViewModelDidUpdate
    }

    // MARK: - Overridden Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewCells()
        configureNavigation()
        configureSections()
        configureTable()
    }

    override func viewWillDisappear(_ animated: Bool) {
        viewModel?.didUpdate = nil
        super.viewWillDisappear(animated)
    }
}

// MARK: - View Configuration
//
private extension CardReaderSettingsConnectedViewController {
    func onViewModelDidUpdate() {
        configureSections()
        configureTable()
        configureUpdateView()
    }

    /// Returns `false` if no reader update is available or if  `viewModel` is `nil`.
    /// Returns `true` otherwise.
    ///
    func isReaderUpdateAvailable() -> Bool {
        viewModel?.optionalReaderUpdateAvailable == true
    }

    /// Set the title and back button.
    ///
    func configureNavigation() {
        title = Localization.title
    }

    /// Setup the sections in this table view
    ///
    func configureSections() {
        sections = [
            Section(title: nil,
                    rows: [
                        .updatePrompt
                    ]
            ),
            Section(title: Localization.sectionHeaderTitle,
                    rows: [
                        .connectedReader,
                        .updateButton,
                        .disconnectButton
                    ]
            )
        ]
    }

    func configureTable() {
        tableView.rowHeight = UITableView.automaticDimension
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }

    func configureUpdateView() {
        guard let viewModel = viewModel else {
            return
        }

        if let error = viewModel.readerUpdateError {
            if case CardReaderServiceError.softwareUpdate(underlyingError: let underlyingError, batteryLevel: let batteryLevel) = error,
               underlyingError == .readerSoftwareUpdateFailedBatteryLow {
                settingsAlerts.updatingFailedLowBattery(from: self, batteryLevel: batteryLevel, close: { [settingsAlerts] in
                    settingsAlerts.dismiss()
                })
            } else {
                settingsAlerts.updatingFailed(
                    from: self,
                    tryAgain: {
                        viewModel.startCardReaderUpdate()
                    },
                    close: {
                        viewModel.dismissReaderUpdateError()
                    }
                )
            }
        } else if let readerUpdateProgress = viewModel.readerUpdateProgress {
            // If we are updating a reader, show the progress alert
            settingsAlerts.updateProgress(from: self,
                                          requiredUpdate: false,
                                          progress: readerUpdateProgress,
                                          cancel: viewModel.cancelCardReaderUpdate)
        } else {
            // If we are not updating a reader, dismiss any progress alert
            settingsAlerts.dismiss()
        }
    }

    /// Register table cells.
    ///
    func registerTableViewCells() {
        for row in Row.allCases {
            tableView.registerNib(for: row.type)
        }
    }

    /// Cells currently configured in the order they appear on screen
    ///
    func configure(_ cell: UITableViewCell, for row: Row, at indexPath: IndexPath) {
        switch cell {
        case let cell as LeftImageTableViewCell where row == .updatePrompt:
            configureUpdatePrompt(cell: cell)
        case let cell as ConnectedReaderTableViewCell where row == .connectedReader:
            configureConnectedReader(cell: cell)
        case let cell as ButtonTableViewCell where row == .updateButton:
            configureUpdateButton(cell: cell)
        case let cell as ButtonTableViewCell where row == .disconnectButton:
            configureDisconnectButton(cell: cell)
        default:
            fatalError()
        }
    }

    private func configureUpdatePrompt(cell: LeftImageTableViewCell) {
        if isReaderUpdateAvailable() {
            cell.configure(image: .infoOutlineImage, text: Localization.updatePromptText)
            cell.backgroundColor = .warningBackground
            cell.imageView?.tintColor = .warning
        } else {
            cell.configure(image: .infoOutlineImage, text: Localization.updateNotNeeded)
            cell.backgroundColor = .none
            cell.imageView?.tintColor = .info
        }
        cell.selectionStyle = .none
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.textColor = .text
    }

    private func configureConnectedReader(cell: ConnectedReaderTableViewCell) {
        let cellViewModel = ConnectedReaderTableViewCell.ViewModel(
            name: viewModel?.connectedReaderID,
            batteryLevel: viewModel?.connectedReaderBatteryLevel,
            softwareVersion: viewModel?.connectedReaderSoftwareVersion
        )
        cell.configure(viewModel: cellViewModel)
        cell.selectionStyle = .none
    }

    private func configureUpdateButton(cell: ButtonTableViewCell) {
        let style: ButtonTableViewCell.Style = isReaderUpdateAvailable() ? .primary : .secondary
        cell.configure(style: style, title: Localization.updateButtonTitle, bottomSpacing: 0) { [weak self] in
            self?.viewModel?.startCardReaderUpdate()
        }

        let readerDisconnectInProgress = viewModel?.readerDisconnectInProgress ?? false
        let readerUpdateInProgress = viewModel?.readerUpdateInProgress ?? false
        cell.enableButton(isReaderUpdateAvailable() && !readerDisconnectInProgress && !readerUpdateInProgress)
        cell.showActivityIndicator(readerUpdateInProgress)

        cell.selectionStyle = .none
        cell.backgroundColor = .clear
    }

    private func configureDisconnectButton(cell: ButtonTableViewCell) {
        let style: ButtonTableViewCell.Style = isReaderUpdateAvailable() ? .secondary : .primary
        cell.configure(style: style, title: Localization.disconnectButtonTitle) { [weak self] in
            self?.viewModel?.disconnectReader()
        }

        let readerDisconnectInProgress = viewModel?.readerDisconnectInProgress ?? false
        let readerUpdateInProgress = viewModel?.readerUpdateInProgress ?? false
        cell.enableButton(!readerDisconnectInProgress && !readerUpdateInProgress)
        cell.showActivityIndicator(readerDisconnectInProgress)

        cell.selectionStyle = .none
        cell.backgroundColor = .clear
    }
}

// MARK: - Convenience Methods
//
private extension CardReaderSettingsConnectedViewController {

    func rowAtIndexPath(_ indexPath: IndexPath) -> Row {
        return sections[indexPath.section].rows[indexPath.row]
    }
}

// MARK: - UITableViewDataSource Conformance
//
extension CardReaderSettingsConnectedViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].rows.count
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? CGFloat.leastNonzeroMagnitude : UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat.leastNonzeroMagnitude
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = rowAtIndexPath(indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: row.reuseIdentifier, for: indexPath)
        configure(cell, for: row, at: indexPath)

        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
}


// MARK: - UITableViewDelegate Conformance
//
extension CardReaderSettingsConnectedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}


// MARK: - Private Types
//
private struct Section {
    let title: String?
    let rows: [Row]
}

private enum Row: CaseIterable {
    case updatePrompt
    case connectedReader
    case updateButton
    case disconnectButton

    var type: UITableViewCell.Type {
        switch self {
        case .updatePrompt:
            return LeftImageTableViewCell.self
        case .connectedReader:
            return ConnectedReaderTableViewCell.self
        case .updateButton:
            return ButtonTableViewCell.self
        case .disconnectButton:
            return ButtonTableViewCell.self
        }
    }

    var reuseIdentifier: String {
        return type.reuseIdentifier
    }
}

// MARK: - Localization
//
private extension CardReaderSettingsConnectedViewController {
    enum Localization {
        static let title = NSLocalizedString(
            "Manage Card Reader",
            comment: "Settings > Manage Card Reader > Title for the reader connected screen in settings."
        )

        static let updatePromptText = NSLocalizedString(
            "Please update your reader software to keep accepting payments",
            comment: "Settings > Manage Card Reader > Connected Reader > A prompt to update a reader running older software"
        )

        static let updateNotNeeded = NSLocalizedString(
            "Congratulations! Your reader is running the latest software",
            comment: "Settings > Manage Card Reader > Connected Reader > A prompt to update a reader running older software"
        )

        static let sectionHeaderTitle = NSLocalizedString(
            "Connected Reader",
            comment: "Settings > Manage Card Reader > Connected Reader Table Section Heading"
        )

        static let updateButtonTitle = NSLocalizedString(
            "Update Reader Software",
            comment: "Settings > Manage Card Reader > Connected Reader > A button to update the reader software"
        )

        static let disconnectButtonTitle = NSLocalizedString(
            "Disconnect Reader",
            comment: "Settings > Manage Card Reader > Connected Reader > A button to disconnect the reader"
        )

    }
}
