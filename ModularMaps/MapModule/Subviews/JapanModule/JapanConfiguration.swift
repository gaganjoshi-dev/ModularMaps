import SwiftUI

struct JapanConfiguration: CountryMapConfiguration {
    var mapProvider: MapProvider { .mapKit }

    var region: MapRegion {
        MapRegion(
            centerLatitude: 36.2048,
            centerLongitude: 138.2529,
            latitudeDelta: 12.0,
            longitudeDelta: 12.0
        )
    }

    let locations: [Location] = [
        Location(latitude: 35.6762, longitude: 139.6503, title: "Tokyo", subtitle: "Japan"),
        Location(latitude: 34.6937, longitude: 135.5023, title: "Osaka", subtitle: "Japan"),
        Location(latitude: 35.0116, longitude: 135.7681, title: "Kyoto", subtitle: "Japan"),
        Location(latitude: 43.0618, longitude: 141.3545, title: "Sapporo", subtitle: "Japan")
    ]

    var backgroundColor: Color { .indigo }
    var buttonPadding: CGFloat { 10 }
    var buttonColor: Color { .mint }
}
