import SwiftUI

struct CountryPickerView: View {
    @State private var selectedCountry: Country = .india
    @State private var showMap = false

    var body: some View {
        NavigationStack {
            Form {
                Section("Select Country") {
                    Picker("Country", selection: $selectedCountry) {
                        ForEach(Country.allCases) { country in
                            Text(country.rawValue).tag(country)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                Section {
                    Button("Open Map") {
                        showMap = true
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("ModularMaps")
            .navigationDestination(isPresented: $showMap) {
                MapView(viewModel: selectedCountry.makeViewModel())
            }
        }
    }
}

#Preview {
    CountryPickerView()
}
