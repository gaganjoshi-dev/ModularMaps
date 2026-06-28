import SwiftUI

struct UKConfiguration: CountryMapConfiguration {
    var mapProvider: MapProvider { .mapKit }

    var region: MapRegion {
        MapRegion(
            centerLatitude: 55.3781,
            centerLongitude: -3.4360,
            latitudeDelta: 10.0,
            longitudeDelta: 10.0
        )
    }

    let locations: [Location] = [
        Location(latitude: 51.5074, longitude: -0.1278, title: "London", subtitle: "England"),
        Location(latitude: 53.4808, longitude: -2.2426, title: "Manchester", subtitle: "England"),
        Location(latitude: 55.9533, longitude: -3.1883, title: "Edinburgh", subtitle: "Scotland"),
        Location(latitude: 51.4545, longitude: -2.5879, title: "Bristol", subtitle: "England"),
        Location(latitude: 52.4862, longitude: -1.8904, title: "Birmingham", subtitle: "England")
    ]

    var backgroundColor: Color { .green }
    var buttonPadding: CGFloat { 16 }
    var buttonColor: Color { .orange }
}
