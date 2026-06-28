import SwiftUI

/// App-shell integration point — wire country modules here.
/// Core does not change when adding a country; only this file gets one new line.
enum ModuleCatalog {
    static func bootstrap() {
        CountryRegistry.register(IndiaCountryModule.self)
        CountryRegistry.register(USCountryModule.self)
        CountryRegistry.register(UKCountryModule.self)
        CountryRegistry.register(JapanCountryModule.self)
    }
}
