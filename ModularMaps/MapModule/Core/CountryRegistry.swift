import SwiftUI

struct CountryIdentity: Hashable, Identifiable {
    let id: String
    let displayName: String
}

/// Type-erased wrapper so the registry can store any `CountryModule` with different associated types.
struct AnyCountryModule: Identifiable {
    let identity: CountryIdentity
    private let _makeMapScreen: @MainActor () -> AnyView

    var id: String { identity.id }

    init<M: CountryModule>(_ module: M.Type) {
        identity = M.identity
        _makeMapScreen = {
            AnyView(M.makeMapScreen(configuration: M.makeConfiguration()))
        }
    }

    @MainActor
    func makeMapScreen() -> AnyView {
        _makeMapScreen()
    }
}

enum CountryRegistry {
    private static var modules: [AnyCountryModule] = []

    static var allModules: [AnyCountryModule] {
        modules.sorted { $0.identity.displayName < $1.identity.displayName }
    }

    static func module(for id: String) -> AnyCountryModule? {
        allModules.first { $0.id == id }
    }

    static func register<M: CountryModule>(_ module: M.Type) {
        let entry = AnyCountryModule(module)
        guard !modules.contains(where: { $0.id == entry.id }) else { return }
        modules.append(entry)
    }
}
