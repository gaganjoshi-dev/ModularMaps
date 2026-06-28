import MapKit

enum MapAnnotationBuilder {
    static func makeAnnotations(from locations: [Location]) -> [MKPointAnnotation] {
        locations.map { location in
            let annotation = MKPointAnnotation()
            annotation.coordinate = CLLocationCoordinate2D(
                latitude: location.latitude,
                longitude: location.longitude
            )
            annotation.title = location.title
            annotation.subtitle = location.subtitle
            return annotation
        }
    }

    static func makeRegion(from region: MapRegion) -> MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: region.centerLatitude,
                longitude: region.centerLongitude
            ),
            span: MKCoordinateSpan(
                latitudeDelta: region.latitudeDelta,
                longitudeDelta: region.longitudeDelta
            )
        )
    }
}
