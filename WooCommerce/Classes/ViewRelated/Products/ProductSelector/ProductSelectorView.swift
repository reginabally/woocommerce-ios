import SwiftUI

/// View showing a list of products to select.
///
struct ProductSelectorView: View {

    let configuration: Configuration

    /// Defines whether the view is presented.
    ///
    @Binding var isPresented: Bool

    /// Defines whether a variation list is shown.
    ///
    @State var isShowingVariationList: Bool = false

    /// View model to use for the variation list, when it is shown.
    ///
    @State var variationListViewModel: ProductVariationSelectorViewModel?

    /// View model to drive the view.
    ///
    @ObservedObject var viewModel: ProductSelectorViewModel

    ///   Environment safe areas
    ///
    @Environment(\.safeAreaInsets) private var safeAreaInsets: EdgeInsets

    @State private var showingFilters: Bool = false

    /// Title for the multi-selection button
    ///
    private var doneButtonTitle: String {
        guard viewModel.totalSelectedItemsCount > 0 else {
            return Localization.doneButton
        }
        return String.pluralize(viewModel.totalSelectedItemsCount,
                                singular: configuration.doneButtonTitleSingularFormat,
                                plural: configuration.doneButtonTitlePluralFormat)
    }

    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchHeader(text: $viewModel.searchTerm, placeholder: Localization.searchPlaceholder)
                    .padding(.horizontal, insets: safeAreaInsets)
                    .accessibilityIdentifier("product-selector-search-bar")
                HStack {
                        Button(Localization.clearSelection) {
                            viewModel.clearSelection()
                        }
                        .buttonStyle(LinkButtonStyle())
                        .fixedSize()
                        .renderedIf(configuration.clearSelectionEnabled && viewModel.totalSelectedItemsCount > 0 && viewModel.syncStatus == .results)
                    Spacer()

                    Button(viewModel.filterButtonTitle) {
                        showingFilters.toggle()
                    }
                    .buttonStyle(LinkButtonStyle())
                    .fixedSize()
                    .renderedIf(configuration.showsFilters)
                }
                .padding(.horizontal, insets: safeAreaInsets)

                switch viewModel.syncStatus {
                case .results:
                    VStack(spacing: 0) {
                        InfiniteScrollList(isLoading: viewModel.shouldShowScrollIndicator,
                                           loadAction: viewModel.syncNextPage) {
                            ForEach(viewModel.productRows) { rowViewModel in
                                createProductRow(rowViewModel: rowViewModel)
                                    .padding(Constants.defaultPadding)
                                    .accessibilityIdentifier(Constants.productRowAccessibilityIdentifier)
                                Divider().frame(height: Constants.dividerHeight)
                                    .padding(.leading, Constants.defaultPadding)
                            }
                        }
                        if configuration.multipleSelectionsEnabled {
                            Button(doneButtonTitle) {
                                viewModel.completeMultipleSelection()
                                isPresented.toggle()
                            }
                            .buttonStyle(PrimaryButtonStyle())
                            .padding(Constants.defaultPadding)
                            .accessibilityIdentifier(Constants.doneButtonAccessibilityIdentifier)
                        }
                        if let variationListViewModel = variationListViewModel {
                            LazyNavigationLink(destination: ProductVariationSelector(
                                isPresented: $isPresented,
                                viewModel: variationListViewModel,
                                multipleSelectionsEnabled: configuration.multipleSelectionsEnabled,
                                onMultipleSelections: { selectedIDs in
                                    viewModel.updateSelectedVariations(productID: variationListViewModel.productID, selectedVariationIDs: selectedIDs)
                                }), isActive: $isShowingVariationList) {
                                EmptyView()
                            }
                        }
                    }
                    .padding(.horizontal, insets: safeAreaInsets)
                    .background(Color(.listForeground(modal: false)).ignoresSafeArea())

                case .empty:
                    EmptyState(title: Localization.emptyStateMessage, image: .emptyProductsTabImage)
                        .frame(maxHeight: .infinity)
                case .firstPageSync:
                    List(viewModel.ghostRows) { rowViewModel in
                        ProductRow(viewModel: rowViewModel)
                            .redacted(reason: .placeholder)
                            .accessibilityRemoveTraits(.isButton)
                            .accessibilityLabel(Localization.loadingRowsAccessibilityLabel)
                            .shimmering()
                    }
                    .padding(.horizontal, insets: safeAreaInsets)
                    .listStyle(PlainListStyle())
                default:
                    EmptyView()
                }
            }
            .background(Color(configuration.searchHeaderBackgroundColor).ignoresSafeArea())
            .ignoresSafeArea(.container, edges: .horizontal)
            .navigationTitle(configuration.title)
            .navigationBarTitleDisplayMode(configuration.prefersLargeTitle ? .large : .inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(configuration.cancelButtonTitle) {
                        isPresented.toggle()
                    }
                }
            }
            .onAppear {
                viewModel.onLoadTrigger.send()
            }
            .notice($viewModel.notice, autoDismiss: false)
            .sheet(isPresented: $showingFilters) {
                FilterListView(viewModel: viewModel.filterListViewModel) { filters in
                    viewModel.filters = filters
                } onClearAction: {
                    // no-op
                } onDismissAction: {
                    // no-op
                }
            }
        }
        .navigationViewStyle(.stack)
        .wooNavigationBarStyle()
    }

    /// Creates the `ProductRow` for a product, depending on whether the product is variable.
    ///
    @ViewBuilder private func createProductRow(rowViewModel: ProductRowViewModel) -> some View {
        if let variationListViewModel = viewModel.getVariationsViewModel(for: rowViewModel.productOrVariationID) {
            HStack {
                ProductRow(multipleSelectionsEnabled: configuration.multipleSelectionsEnabled,
                           viewModel: rowViewModel,
                           onCheckboxSelected: {
                    viewModel.toggleSelectionForAllVariations(of: rowViewModel.productOrVariationID)
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .onTapGesture {
                    isShowingVariationList.toggle()
                    self.variationListViewModel = variationListViewModel
                }

                DisclosureIndicator()
            }
            .accessibilityHint(configuration.variableProductRowAccessibilityHint)
        } else {
            ProductRow(multipleSelectionsEnabled: configuration.multipleSelectionsEnabled,
                       viewModel: rowViewModel)
                .accessibilityHint(configuration.productRowAccessibilityHint)
                .onTapGesture {
                    viewModel.selectProduct(rowViewModel.productOrVariationID)
                    if !configuration.multipleSelectionsEnabled {
                        isPresented.toggle()
                    }
                }
        }
    }
}

extension ProductSelectorView {
    struct Configuration {
        var showsFilters: Bool = false
        var multipleSelectionsEnabled: Bool = false
        var clearSelectionEnabled: Bool = true
        var searchHeaderBackgroundColor: UIColor = .listForeground(modal: false)
        var prefersLargeTitle: Bool = true
        var doneButtonTitleSingularFormat: String = ""
        var doneButtonTitlePluralFormat: String = ""
        let title: String
        let cancelButtonTitle: String
        let productRowAccessibilityHint: String
        let variableProductRowAccessibilityHint: String
    }
}

private extension ProductSelectorView {
    enum Constants {
        static let dividerHeight: CGFloat = 1
        static let defaultPadding: CGFloat = 16
        static let doneButtonAccessibilityIdentifier: String = "product-multiple-selection-done-button"
        static let productRowAccessibilityIdentifier: String = "product-item"
    }

    enum Localization {
        static let emptyStateMessage = NSLocalizedString("No products found",
                                                         comment: "Message displayed if there are no products to display in the Select Product screen")
        static let searchPlaceholder = NSLocalizedString("Search Products", comment: "Placeholder on the search field to search for a specific product")
        static let loadingRowsAccessibilityLabel = NSLocalizedString("Loading products",
                                                                     comment: "Accessibility label for placeholder rows while products are loading")
        static let clearSelection = NSLocalizedString("Clear selection", comment: "Button to clear selection on the Select Products screen")
        static let doneButton = NSLocalizedString("Done", comment: "Button to submit the product selector without any product selected.")
    }
}

struct AddProduct_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ProductSelectorViewModel(siteID: 123)
        let configuration = ProductSelectorView.Configuration(
            showsFilters: true,
            multipleSelectionsEnabled: true,
            title: "Add Product",
            cancelButtonTitle: "Close",
            productRowAccessibilityHint: "Add product to order",
            variableProductRowAccessibilityHint: "Open variation list")
        ProductSelectorView(configuration: configuration, isPresented: .constant(true), viewModel: viewModel)
    }
}
