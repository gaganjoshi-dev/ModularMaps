import SwiftUI

struct IndiaConfiguration: CountryMapConfiguration {
    var mapProvider: MapProvider { .mapKit }

    var region: MapRegion {
        MapRegion(
            centerLatitude: 20.5937,
            centerLongitude: 78.9629,
            latitudeDelta: 20.0,
            longitudeDelta: 20.0
        )
    }

    let locations: [Location] = [
        Location(latitude: 28.6139, longitude: 77.2090, title: "New Delhi", subtitle: "India"),
        Location(latitude: 19.0760, longitude: 72.8777, title: "Mumbai", subtitle: "India"),
        Location(latitude: 13.0827, longitude: 80.2707, title: "Chennai", subtitle: "India"),
        Location(latitude: 22.5726, longitude: 88.3639, title: "Kolkata", subtitle: "India"),
        Location(latitude: 12.9716, longitude: 77.5946, title: "Bangalore", subtitle: "India")
    ]

    var backgroundColor: Color { .red }
    var buttonPadding: CGFloat { 12 }
    var buttonColor: Color { .white }
}
