import SwiftUI

enum JapanCountryModule: CountryModule {
    typealias Configuration = JapanConfiguration

    static var identity: CountryIdentity {
        CountryIdentity(id: "japan", displayName: "Japan")
    }

    static func makeConfiguration() -> JapanConfiguration {
        JapanConfiguration()
    }

    static func makeMapScreen(configuration: JapanConfiguration) -> some View {
        JapanMapView(configuration: configuration)
    }
}
