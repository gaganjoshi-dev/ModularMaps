import SwiftUI

struct JapanMapView: View {
    var configuration: JapanConfiguration

    var body: some View {
        VStack {
            MapProviderView(
                provider: configuration.mapProvider,
                region: configuration.region,
                locations: configuration.locations
            )

            Text("Japan")
                .foregroundStyle(.white)
                .padding()

            configuration.defaultButton(title: "Japan Button 1") {}
        }
        .navigationTitle("Japan Map")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(configuration.backgroundColor)
    }
}
