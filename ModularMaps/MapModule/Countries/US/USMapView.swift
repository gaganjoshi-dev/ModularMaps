import SwiftUI

struct USMapView: View {
    var configuration: USConfiguration

    var body: some View {
        VStack {
            MapProviderView(
                provider: configuration.mapProvider,
                region: configuration.region,
                locations: configuration.locations
            )

            Text("US")
                .foregroundStyle(.white)
                .padding()

            configuration.defaultButton(title: "US Button 1") {}
            configuration.defaultButton(title: "US Button 2") {}
        }
        .navigationTitle("US Map")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(configuration.backgroundColor)
    }
}
