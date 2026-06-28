import SwiftUI

@Observable
@MainActor
final class MapViewModel {
    private(set) var module: AnyCountryModule

    init(module: AnyCountryModule) {
        self.module = module
    }
}
