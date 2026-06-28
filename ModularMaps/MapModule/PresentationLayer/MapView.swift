import SwiftUI

struct MapView: View {
    var viewModel: MapViewModel

    var body: some View {
        viewModel.country.mapScreen
    }
}

#Preview {
    NavigationStack {
        MapView(viewModel: MapViewModel(country: .india))
    }
}
