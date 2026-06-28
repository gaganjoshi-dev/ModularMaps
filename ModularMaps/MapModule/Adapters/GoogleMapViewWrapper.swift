import MapKit
import SwiftUI

/// Google Maps adapter stub — production would use `GMSMapView` from the Google Maps SDK.
/// Uses MapKit with hybrid styling and a provider badge to demonstrate a separate adapter path.
struct GoogleMapViewWrapper: UIViewRepresentable {
    var region: MapRegion
    var locations: [Location]

    func makeUIView(context: Context) -> UIView {
        let container = UIView()
        container.backgroundColor = .systemBackground

        let mapView = MKMapView()
        mapView.mapType = .hybrid
        mapView.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(mapView)

        let badge = UILabel()
        badge.text = "Google Maps Adapter"
        badge.font = .systemFont(ofSize: 12, weight: .semibold)
        badge.textColor = .white
        badge.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.85)
        badge.textAlignment = .center
        badge.layer.cornerRadius = 6
        badge.clipsToBounds = true
        badge.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(badge)

        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: container.topAnchor),
            mapView.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            mapView.trailingAnchor.constraint(equalTo: container.trailingAnchor),
            mapView.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            badge.topAnchor.constraint(equalTo: container.safeAreaLayoutGuide.topAnchor, constant: 8),
            badge.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            badge.widthAnchor.constraint(greaterThanOrEqualToConstant: 160),
            badge.heightAnchor.constraint(equalToConstant: 28)
        ])

        context.coordinator.mapView = mapView
        return container
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        guard let mapView = context.coordinator.mapView else { return }
        mapView.setRegion(MapAnnotationBuilder.makeRegion(from: region), animated: true)
        mapView.removeAnnotations(mapView.annotations)
        mapView.addAnnotations(MapAnnotationBuilder.makeAnnotations(from: locations))
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    final class Coordinator {
        var mapView: MKMapView?
    }
}
