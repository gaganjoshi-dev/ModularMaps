import SwiftUI

struct CountryPickerView: View {
    @State private var selectedModuleID: String = ""
    @State private var showMap = false

    private var modules: [AnyCountryModule] {
        CountryRegistry.allModules
    }

    private var selectedModule: AnyCountryModule? {
        CountryRegistry.module(for: selectedModuleID)
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Select Country") {
                    Picker("Country", selection: $selectedModuleID) {
                        ForEach(modules) { module in
                            Text(module.identity.displayName).tag(module.id)
                        }
                    }
                    .pickerStyle(.menu)
                }

                Section {
                    Button("Open Map") {
                        showMap = true
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .disabled(selectedModule == nil)
                }
            }
            .navigationTitle("ModularMaps")
            .navigationDestination(isPresented: $showMap) {
                if let module = selectedModule {
                    MapView(viewModel: MapViewModel(module: module))
                }
            }
            .onAppear {
                if selectedModuleID.isEmpty, let first = modules.first {
                    selectedModuleID = first.id
                }
            }
        }
    }
}

#Preview {
    CountryPickerView()
}
