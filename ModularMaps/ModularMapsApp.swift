//
//  ModularMapsApp.swift
//  ModularMaps
//
//  Created by gagan joshi on 2026-06-28.
//

import SwiftUI

@main
struct ModularMapsApp: App {
    init() {
        ModuleCatalog.bootstrap()
    }

    var body: some Scene {
        WindowGroup {
            CountryPickerView()
        }
    }
}
