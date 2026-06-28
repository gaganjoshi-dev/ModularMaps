import SwiftUI

struct CountryIdentity: Hashable, Identifiable {
    let id: String
    let displayName: String
}

struct CountryModuleRegistrar: Identifiable {
    let identity: CountryIdentity
    private let _makeMapScreen: @MainActor () -> AnyView

    var id: String { identity.id }

    init(
        identity: CountryIdentity,
        @ViewBuilder makeMapScreen: @escaping @MainActor () -> some View
    ) {
        self.identity = identity
        self._makeMapScreen = { AnyView(makeMapScreen()) }
    }

    @MainActor
    func makeMapScreen() -> AnyView {
        _makeMapScreen()
    }
}

enum CountryRegistry {
    private static var modules: [CountryModuleRegistrar] = []
    private static var isBootstrapped = false

    static var allModules: [CountryModuleRegistrar] {
        bootstrapIfNeeded()
        return modules.sorted { $0.identity.displayName < $1.identity.displayName }
    }

    static func module(for id: String) -> CountryModuleRegistrar? {
        allModules.first { $0.id == id }
    }

    static func register(_ registrar: CountryModuleRegistrar) {
        guard !modules.contains(where: { $0.id == registrar.id }) else { return }
        modules.append(registrar)
    }

    private static func bootstrapIfNeeded() {
        guard !isBootstrapped else { return }
        isBootstrapped = true
        ModuleCatalog.bootstrap()
    }
}

/// Single integration point when onboarding a new country team.
/// Add one `CountryRegistry.register(...)` line — do not edit CountryPickerView or MapView.
enum ModuleCatalog {
    static func bootstrap() {
        CountryRegistry.register(IndiaCountryModule.registrar)
        CountryRegistry.register(USCountryModule.registrar)
        CountryRegistry.register(UKCountryModule.registrar)
        CountryRegistry.register(JapanCountryModule.registrar)
    }
}
