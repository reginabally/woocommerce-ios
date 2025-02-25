import Foundation

/// SitePlugins: Remote Endpoints
///
public class SitePluginsRemote: Remote {

    /// Retrieves all of the `SitePlugin`s for a given site.
    ///
    /// - Parameters:
    ///   - siteID: Site for which we'll fetch the plugins.
    ///   - completion: Closure to be executed upon completion.
    ///
    public func loadPlugins(for siteID: Int64,
                            completion: @escaping (Result<[SitePlugin], Error>) -> Void) {
        let path = Constants.sitePluginsPath
        let request = JetpackRequest(wooApiVersion: .none,
                                     method: .get,
                                     siteID: siteID,
                                     path: path,
                                     parameters: nil,
                                     availableAsRESTRequest: true)
        let mapper = SitePluginsMapper(siteID: siteID)

        enqueue(request, mapper: mapper, completion: completion)
    }

    /// Install the plugin with the specified slug for a given site.
    ///
    /// - Parameters:
    ///   - siteID: Site for which we'll install the plugin.
    ///   - slug: The plugin’s URL slug in the plugin directory.
    ///   - completion: Closure to be executed upon completion.
    ///
    public func installPlugin(for siteID: Int64,
                              slug: String,
                              completion: @escaping (Result<SitePlugin, Error>) -> Void) {
        let path = Constants.sitePluginsPath
        let request = JetpackRequest(wooApiVersion: .none, method: .post, siteID: siteID, path: path, parameters: [Constants.slugParameter: slug])
        let mapper = SitePluginMapper(siteID: siteID)
        enqueue(request, mapper: mapper, completion: completion)
    }

    /// Activate the plugin with the specified name for a given site.
    ///
    /// - Parameters:
    ///   - siteID: Site for which we'll activate the plugin.
    ///   - pluginName: Name of the plugin (found with "plugin" key in plugin detail).
    ///   - completion: Closure to be executed upon completion.
    ///
    public func activatePlugin(for siteID: Int64,
                               pluginName: String,
                               completion: @escaping (Result<SitePlugin, Error>) -> Void) {
        let path = String(format: "%@/%@", Constants.sitePluginsPath, pluginName)
        let request = JetpackRequest(wooApiVersion: .none,
                                     method: .post,
                                     siteID: siteID,
                                     path: path,
                                     parameters: [Constants.statusParameter: Constants.statusActive])
        let mapper = SitePluginMapper(siteID: siteID)
        enqueue(request, mapper: mapper, completion: completion)
    }

    /// Get details about the plugin with the specified name for a given site.
    ///
    /// - Parameters:
    ///   - siteID: Site for which we'll get detail the plugin.
    ///   - pluginName: Name of the plugin (found with "plugin" key in plugin detail).
    ///   - completion: Closure to be executed upon completion.
    ///
    public func getPluginDetails(for siteID: Int64,
                                 pluginName: String,
                                 completion: @escaping (Result<SitePlugin, Error>) -> Void) {
        let path = String(format: "%@/%@", Constants.sitePluginsPath, pluginName)
        let request = JetpackRequest(wooApiVersion: .none, method: .get, siteID: siteID, path: path, parameters: nil)
        let mapper = SitePluginMapper(siteID: siteID)
        enqueue(request, mapper: mapper, completion: completion)
    }
}


// MARK: - Constants!
//
private extension SitePluginsRemote {
    enum Constants {
        static let sitePluginsPath: String = "wp/v2/plugins"
        static let slugParameter: String = "slug"
        static let statusParameter: String = "status"
        static let statusActive: String = "active"
    }
}
