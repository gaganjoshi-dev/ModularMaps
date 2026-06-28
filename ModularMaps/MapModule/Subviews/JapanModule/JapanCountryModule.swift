import SwiftUI

enum JapanCountryModule {
    static let registrar = CountryModuleRegistrar(
        identity: CountryIdentity(id: "japan", displayName: "Japan"),
        makeMapScreen: {
            JapanMapView(configuration: JapanConfiguration())
        }
    )
}
