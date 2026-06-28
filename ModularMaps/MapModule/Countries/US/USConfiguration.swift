import SwiftUI

struct USConfiguration: CountryMapConfiguration {
    var mapProvider: MapProvider { .googleMaps }

    var region: MapRegion {
        MapRegion(
            centerLatitude: 37.0902,
            centerLongitude: -95.7129,
            latitudeDelta: 70.0,
            longitudeDelta: 70.0
        )
    }

    let locations: [Location] = [
        Location(latitude: 37.7749, longitude: -122.4194, title: "San Francisco", subtitle: "California"),
        Location(latitude: 34.0522, longitude: -118.2437, title: "Los Angeles", subtitle: "California"),
        Location(latitude: 40.7128, longitude: -74.0060, title: "New York", subtitle: "New York"),
        Location(latitude: 41.8781, longitude: -87.6298, title: "Chicago", subtitle: "Illinois"),
        Location(latitude: 29.7604, longitude: -95.3698, title: "Houston", subtitle: "Texas"),
        Location(latitude: 33.4484, longitude: -112.0740, title: "Phoenix", subtitle: "Arizona")
    ]

    var backgroundColor: Color { .pink }
    var buttonPadding: CGFloat { 14 }
    var buttonColor: Color { .yellow }
}
