import MapKit
import SwiftUI

struct MKMapViewWrapper: UIViewRepresentable {
    var region: MapRegion
    var locations: [Location]

    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.setRegion(MapAnnotationBuilder.makeRegion(from: region), animated: true)
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotations(MapAnnotationBuilder.makeAnnotations(from: locations))
    }
}
