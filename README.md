# ModularMaps

Multi-country modular map architecture for iOS — shared core, country-specific UI, and per-region map SDKs (MapKit, Google Maps).

ModularMaps is a system design reference for building map functionality when multiple developer teams in different countries share a single codebase and ship one app to the App Store — while allowing each region to use its own UI and map SDK.

## Adding a new country (e.g. Japan)

1. Create `MapModule/Subviews/JapanModule/` with:
   - `JapanConfiguration.swift`
   - `JapanMapView.swift`
   - `JapanCountryModule.swift` (exports `registrar`)
2. Add **one line** to `ModuleCatalog.bootstrap()`:
   ```swift
   CountryRegistry.register(JapanCountryModule.registrar)
   ```

Do **not** edit `CountryPickerView`, `MapView`, or `MapViewModel`.

With SPM (future), each country becomes its own package and the app target links it — `ModuleCatalog` moves to the app shell.

## Architecture

- **Shared core** — common map logic, location models, and view models
- **Country modules** — India, US, and UK each own configuration, UI, and styling
- **Adapter layer** — MapKit and Google Maps wrapped behind a common interface
- **Country registry** — add a country without editing central dispatch code

## What varies per country

| Concern | Shared or per-country? |
|---------|------------------------|
| Business logic | Shared core |
| UI layout & styling | Per-country module |
| Map SDK | Per-country adapter |
| Annotations & regions | Per-country configuration |

## Requirements

- Xcode 16+
- iOS 17+

## Run

Open `ModularMaps.xcodeproj`, select a simulator, and run. Pick a country on the launch screen to see its map module.
