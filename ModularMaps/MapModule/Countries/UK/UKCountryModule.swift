import SwiftUI

enum UKCountryModule {
    static let registrar = CountryModuleRegistrar(
        identity: CountryIdentity(id: "uk", displayName: "UK"),
        makeMapScreen: {
            UKMapView(configuration: UKConfiguration())
        }
    )
}
