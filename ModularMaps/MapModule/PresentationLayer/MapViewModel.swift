import SwiftUI
internal import Combine

@Observable
@MainActor
final class MapViewModel {
    private(set) var country: Country

    init(country: Country) {
        self.country = country
    }

    func updateCountry(_ country: Country) {
        self.country = country
    }
}
