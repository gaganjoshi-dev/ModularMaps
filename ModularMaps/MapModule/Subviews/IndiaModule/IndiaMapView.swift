import SwiftUI

struct IndiaMapView: View {
    var configuration: IndiaConfiguration

    var body: some View {
        VStack {
            MapProviderView(
                provider: configuration.mapProvider,
                region: configuration.region,
                locations: configuration.locations
            )

            configuration.defaultButton(title: "India Button 1") {}
            configuration.defaultButton(title: "India Button 2") {}
        }
        .navigationTitle("India Map")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(configuration.backgroundColor)
    }
}
