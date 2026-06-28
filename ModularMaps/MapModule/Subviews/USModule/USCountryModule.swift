import SwiftUI

enum USCountryModule {
    static let registrar = CountryModuleRegistrar(
        identity: CountryIdentity(id: "us", displayName: "US"),
        makeMapScreen: {
            USMapView(configuration: USConfiguration())
        }
    )
}
