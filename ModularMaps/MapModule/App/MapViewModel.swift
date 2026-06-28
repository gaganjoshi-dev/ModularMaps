import SwiftUI

@Observable
@MainActor
final class MapViewModel {
    private(set) var module: CountryModuleRegistrar

    init(module: CountryModuleRegistrar) {
        self.module = module
    }
}
