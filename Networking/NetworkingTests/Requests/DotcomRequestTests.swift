import Foundation
import XCTest
@testable import Networking


/// WordPress.com Requests Unit Tests
///
final class DotcomRequestTests: XCTestCase {

    /// RPC Sample Method Path
    ///
    private let sampleRPC = "sample"

    /// Sample Parameters
    ///
    private let sampleParameters = ["some": "thing", "yo": "semite"]

    /// Sample site address
    ///
    private let sampleSiteAddress = "https://wordpress.com"

    /// Sample Parameters as a Query String
    ///
    private var sampleParametersForQuery: String {
        return "?" + sampleParametersForBody
    }

    /// Sample Parameters as a Body String
    ///
    private var sampleParametersForBody: String {
        return encodeAsBodyString(parameters: sampleParameters)
    }



    /// Verifies that the DotcomRequest's generated URL contains the `BaseURL + API Version + RPC Name`.
    ///
    func test_request_url_contains_expected_components() {
        let request = DotcomRequest(wordpressApiVersion: .mark1_1, method: .get, path: sampleRPC)

        let expectedURL = URL(string: Settings.wordpressApiBaseURL + request.wordpressApiVersion.path + sampleRPC)!
        let generatedURL = try! request.asURLRequest().url!
        XCTAssertEqual(expectedURL, generatedURL)
    }

    /// Verifies that the DotcomRequest's generated URL contains the Parameters serialized as part of the query, when the method is `get`.
    ///
    func test_parameters_are_serialized_as_part_of_the_url_query_when_method_is_set_to_get() {
        let request = DotcomRequest(wordpressApiVersion: .mark1_1, method: .get, path: sampleRPC, parameters: sampleParameters)

        let expectedURL = URL(string: Settings.wordpressApiBaseURL + request.wordpressApiVersion.path + sampleRPC + sampleParametersForQuery)!
        let generatedURL = try! request.asURLRequest().url!

        /// Note: Why not compare URL's directly?. As of iOS 12, URLQueryItem's serialization to string can result in swizzled entries.
        /// (Exact same result, but shuffled order!). For that reason we compare piece by piece!.
        ///
        let expectedComponents = URLComponents(url: expectedURL, resolvingAgainstBaseURL: false)!
        let generatedComponents = URLComponents(url: generatedURL, resolvingAgainstBaseURL: false)!

        let expectedQueryItems = Set(generatedComponents.queryItems!)
        let generatedQueryItems = Set(expectedComponents.queryItems!)

        XCTAssertEqual(expectedComponents.scheme, generatedComponents.scheme)
        XCTAssertEqual(expectedComponents.percentEncodedHost, generatedComponents.percentEncodedHost)
        XCTAssertEqual(expectedComponents.percentEncodedPath, generatedComponents.percentEncodedPath)
        XCTAssertEqual(expectedQueryItems, generatedQueryItems)
    }

    /// Verifies that the DotcomRequest's generated URL does NOT contain the Parameters serialized as part of the query, when the method is `post`.
    ///
    func test_parameters_are_not_serialized_as_part_of_the_url_query_when_method_is_set_to_post() {
        let request = DotcomRequest(wordpressApiVersion: .mark1_1, method: .post, path: sampleRPC, parameters: sampleParameters)

        let generatedURL = try! request.asURLRequest().url!
        let expectedURL = URL(string: Settings.wordpressApiBaseURL + request.wordpressApiVersion.path + sampleRPC)!
        XCTAssertEqual(expectedURL, generatedURL)
    }

    /// Verifies that the DotcomRequest's generated httpBody contains the Parameters, serialized as expected.
    ///
    func test_parameters_are_serialized_as_part_of_the_body_when_method_is_set_to_post() {
        let request = DotcomRequest(wordpressApiVersion: .mark1_1, method: .post, path: sampleRPC, parameters: sampleParameters)

        let generatedBodyAsData = try! request.asURLRequest().httpBody!
        let generatedBodyAsString = String(data: generatedBodyAsData, encoding: .utf8)
        let generatedBodyParameters = generatedBodyAsString!.split(separator: Character("&"))

        /// Note: As of iOS 12 the parameters were being serialized at random positions. That's *why* this test is a bit extra complex!
        ///
        for parameter in generatedBodyParameters {
            let components = parameter.split(separator: Character("="))
            let key = String(components[0])
            let value = String(components[1])

            XCTAssertEqual(value, sampleParameters[key])
        }
    }

    // MARK: `RESTRequest` conversion

    func test_it_is_converted_into_RESTRequest_for_wpMark2_when_availableAsRESTRequest_is_true() throws {
        // Given
        let request = try DotcomRequest(wordpressApiVersion: .wpMark2,
                                        method: .post,
                                        path: sampleRPC,
                                        parameters: sampleParameters,
                                        availableAsRESTRequest: true)

        // When
        let output = try XCTUnwrap(request.asRESTRequest(with: sampleSiteAddress))

        // Then
        XCTAssertEqual(output.apiVersionPath, WooAPIVersion.none.path)
        XCTAssertEqual(output.method, .post)
        XCTAssertEqual(output.path, "wp/v2/sample")
        let params = try XCTUnwrap(output.parameters as? [String: String])
        XCTAssertEqual(params, sampleParameters)
        XCTAssertEqual(output.siteURL, sampleSiteAddress)
    }

    func test_initializing_RESTRequest_throws_for_non_WPOrg_endpoints_even_if_availableAsRESTRequest_is_true() throws {
        let apis = WordPressAPIVersion.allCases.filter({ $0.isWPOrgEndpoint == false })
        for api in apis {
            do {
                let _ = try DotcomRequest(wordpressApiVersion: api,
                                          method: .post,
                                          path: sampleRPC,
                                          parameters: sampleParameters,
                                          availableAsRESTRequest: true)
            } catch DotcomRequestError.apiVersionCannotBeAccessedUsingRESTAPI {
                // Catch the expected error
            } catch {
                XCTFail("Unexpected error!")
            }
        }
    }

    func test_converting_into_RESTRequest_is_nil_when_availableAsRESTRequest_is_false() throws {
        // Given
        let request = try DotcomRequest(wordpressApiVersion: .wpMark2,
                                        method: .post,
                                        path: sampleRPC,
                                        parameters: sampleParameters,
                                        availableAsRESTRequest: false)

        // Then
        XCTAssertNil(request.asRESTRequest(with: sampleSiteAddress))
    }

    func test_the_converted_RESTRequest_path_does_not_have_sites_component_for_a_path_with_front_slash() throws {
        // Given
        let pathWithSite = "/sites/12345/media/"
        let request = try DotcomRequest(wordpressApiVersion: .wpMark2,
                                        method: .post,
                                        path: pathWithSite,
                                        parameters: sampleParameters,
                                        availableAsRESTRequest: true)

        // When
        let output = try XCTUnwrap(request.asRESTRequest(with: sampleSiteAddress))

        // Then
        XCTAssertEqual(output.apiVersionPath, WooAPIVersion.none.path)
        XCTAssertEqual(output.method, .post)
        XCTAssertEqual(output.path, "wp/v2/media/")
        let params = try XCTUnwrap(output.parameters as? [String: String])
        XCTAssertEqual(params, sampleParameters)
        XCTAssertEqual(output.siteURL, sampleSiteAddress)
    }

    func test_the_converted_RESTRequest_path_does_not_have_sites_component_for_a_path_without_front_slash() throws {
        // Given
        let pathWithSite = "sites/12345/media/"
        let request = try DotcomRequest(wordpressApiVersion: .wpMark2,
                                        method: .post,
                                        path: pathWithSite,
                                        parameters: sampleParameters,
                                        availableAsRESTRequest: true)

        // When
        let output = try XCTUnwrap(request.asRESTRequest(with: sampleSiteAddress))

        // Then
        XCTAssertEqual(output.apiVersionPath, WooAPIVersion.none.path)
        XCTAssertEqual(output.method, .post)
        XCTAssertEqual(output.path, "wp/v2/media/")
        let params = try XCTUnwrap(output.parameters as? [String: String])
        XCTAssertEqual(params, sampleParameters)
        XCTAssertEqual(output.siteURL, sampleSiteAddress)
    }
}


/// Parameter Encoding Helpers
///
private extension DotcomRequestTests {

    /// Encodes the specified collection of Parameters for the URLRequest's httpBody
    ///
    func encodeAsBodyString(parameters: [String: String]) -> String {
        return parameters.reduce("") { (output, parameter) in
            let prefix = output.isEmpty ? "" : "&"
            return output + prefix + parameter.key + "=" + parameter.value
        }
    }
}
