import SwiftUI

enum USCountryModule: CountryModule {
    typealias Configuration = USConfiguration

    static var identity: CountryIdentity {
        CountryIdentity(id: "us", displayName: "US")
    }

    static func makeConfiguration() -> USConfiguration {
        USConfiguration()
    }

    static func makeMapScreen(configuration: USConfiguration) -> some View {
        USMapView(configuration: configuration)
    }
}
