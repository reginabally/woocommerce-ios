import AutomatticTracks

/// ABTest adds A/B testing experiments and runs the tests based on their variations from the ExPlat service.
///
public enum ABTest: String, Codable, CaseIterable {
    /// Mocks for unit testing
    case mockLoggedIn, mockLoggedOut

    /// A/A test to make sure there is no bias in the logged out state.
    /// Experiment ref: pbxNRc-1QS-p2
    case aaTestLoggedIn = "woocommerceios_explat_aa_test_logged_in_202212_v2"

    /// A/A test to make sure there is no bias in the logged out state.
    /// Experiment ref: pbxNRc-1S0-p2
    case aaTestLoggedOut = "woocommerceios_explat_aa_test_logged_out_202212_v2"

    /// A/B test for a simplified product creation and editing experience.
    /// Experiment ref: pbxNRc-2li-p2
    case simplifiedProductEditing = "woocommerceios_products_creation_editing_simplify_v1"

    /// Returns a variation for the given experiment
    ///
    public var variation: Variation? {
        ExPlat.shared?.experiment(rawValue)
    }

    /// Returns the context for the given experiment.
    ///
    /// When adding a new experiment, add it to the appropriate case depending on its context (logged-in or logged-out experience).
    public var context: ExperimentContext {
        switch self {
        case .aaTestLoggedIn, .simplifiedProductEditing:
            return .loggedIn
        case .aaTestLoggedOut:
            return .loggedOut
        // Mocks
        case .mockLoggedIn:
            return .loggedIn
        case .mockLoggedOut:
            return .loggedOut
        }
    }

    // Returns only the genuine ABTest cases. (After removing unit test mocks)
    //
    static var genuineCases: [ABTest] {
        ABTest.allCases.filter { [.mockLoggedIn, .mockLoggedOut].contains($0) == false }
    }
}

public extension ABTest {
    /// Start the AB Testing platform if any experiment exists for the provided context
    ///
    @MainActor
    static func start(for context: ExperimentContext) async {
        let experiments = ABTest.genuineCases.filter { $0.context == context }

        await withCheckedContinuation { continuation in
            guard !experiments.isEmpty else {
                return continuation.resume(returning: ())
            }

            let experimentNames = experiments.map { $0.rawValue }
            ExPlat.shared?.register(experiments: experimentNames)

            ExPlat.shared?.refresh {
                continuation.resume(returning: ())
            }
        } as Void
    }
}

public extension Variation {
    /// Used in an analytics event property value.
    var analyticsValue: String {
        switch self {
        case .control:
            return "control"
        case .treatment:
            return "treatment"
        case .customTreatment(let name):
            return "treatment: \(name)"
        }
    }
}

/// The context for an A/B testing experiment (where the experience being tested occurs).
///
public enum ExperimentContext: Equatable {
    case loggedOut
    case loggedIn
    case none // For the `null` experiment case
}
