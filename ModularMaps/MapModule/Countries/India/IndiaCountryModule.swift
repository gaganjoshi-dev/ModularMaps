import SwiftUI

enum IndiaCountryModule {
    static let registrar = CountryModuleRegistrar(
        identity: CountryIdentity(id: "india", displayName: "India"),
        makeMapScreen: {
            IndiaMapView(configuration: IndiaConfiguration())
        }
    )
}
