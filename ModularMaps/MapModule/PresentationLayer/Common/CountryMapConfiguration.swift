import SwiftUI

protocol CountryMapConfiguration: CustomizableView {
    var mapProvider: MapProvider { get }
    var region: MapRegion { get }
    var locations: [Location] { get }
}
