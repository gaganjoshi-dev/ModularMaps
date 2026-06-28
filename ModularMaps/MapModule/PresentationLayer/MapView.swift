import SwiftUI

struct MapView: View {
    var viewModel: MapViewModel

    var body: some View {
        viewModel.module.makeMapScreen()
    }
}

#Preview {
    NavigationStack {
        MapView(viewModel: MapViewModel(module: IndiaCountryModule.registrar))
    }
}
