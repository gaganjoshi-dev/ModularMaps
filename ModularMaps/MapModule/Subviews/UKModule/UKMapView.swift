import SwiftUI

struct UKMapView: View {
    var configuration: UKConfiguration

    var body: some View {
        VStack {
            MapProviderView(
                provider: configuration.mapProvider,
                region: configuration.region,
                locations: configuration.locations
            )

            Text("UK")
                .foregroundStyle(.white)
                .padding()

            configuration.defaultButton(title: "UK Button 1") {}
        }
        .navigationTitle("UK Map")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(configuration.backgroundColor)
    }
}
