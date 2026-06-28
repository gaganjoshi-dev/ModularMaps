import SwiftUI

enum IndiaCountryModule: CountryModule {
    typealias Configuration = IndiaConfiguration

    static var identity: CountryIdentity {
        CountryIdentity(id: "india", displayName: "India")
    }

    static func makeConfiguration() -> IndiaConfiguration {
        IndiaConfiguration()
    }

    static func makeMapScreen(configuration: IndiaConfiguration) -> some View {
        IndiaMapView(configuration: configuration)
    }
}
