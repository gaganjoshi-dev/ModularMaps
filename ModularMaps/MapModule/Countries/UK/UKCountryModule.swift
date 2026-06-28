import SwiftUI

enum UKCountryModule: CountryModule {
    typealias Configuration = UKConfiguration

    static var identity: CountryIdentity {
        CountryIdentity(id: "uk", displayName: "UK")
    }

    static func makeConfiguration() -> UKConfiguration {
        UKConfiguration()
    }

    static func makeMapScreen(configuration: UKConfiguration) -> some View {
        UKMapView(configuration: configuration)
    }
}
