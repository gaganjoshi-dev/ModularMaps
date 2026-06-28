import SwiftUI

enum Country: String, CaseIterable, Identifiable {
    case india = "India"
    case us = "US"
    case uk = "UK"

    var id: String { rawValue }

    @ViewBuilder
    var mapScreen: some View {
        switch self {
        case .india:
            IndiaMapView(configuration: IndiaConfiguration())
        case .us:
            USMapView(configuration: USConfiguration())
        case .uk:
            UKMapView(configuration: UKConfiguration())
        }
    }

    func makeViewModel() -> MapViewModel {
        MapViewModel(country: self)
    }
}
