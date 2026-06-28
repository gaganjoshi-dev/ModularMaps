import SwiftUI

/// Country teams conform to this protocol with their own Configuration and MapScreen types.
protocol CountryModule {
    associatedtype Configuration: CountryMapConfiguration
    associatedtype MapScreen: View

    static var identity: CountryIdentity { get }
    static func makeConfiguration() -> Configuration

    @MainActor
    @ViewBuilder
    static func makeMapScreen(configuration: Configuration) -> MapScreen
}

extension CountryModule {
    @MainActor
    @ViewBuilder
    static func makeMapScreen() -> MapScreen {
        makeMapScreen(configuration: makeConfiguration())
    }
}
