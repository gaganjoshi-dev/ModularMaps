import SwiftUI

enum MapProvider {
    case mapKit
    case googleMaps
}

struct MapProviderView: View {
    let provider: MapProvider
    let region: MapRegion
    let locations: [Location]

    var body: some View {
        switch provider {
        case .mapKit:
            MKMapViewWrapper(region: region, locations: locations)
        case .googleMaps:
            GoogleMapViewWrapper(region: region, locations: locations)
        }
    }
}

struct MapRegion {
    let centerLatitude: Double
    let centerLongitude: Double
    let latitudeDelta: Double
    let longitudeDelta: Double
}
