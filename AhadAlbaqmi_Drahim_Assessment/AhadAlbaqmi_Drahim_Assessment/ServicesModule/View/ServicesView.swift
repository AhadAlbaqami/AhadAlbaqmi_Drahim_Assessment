//
//  ServicesView.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/21/25.
//

import SwiftUI

struct ServicesView: View {
    @StateObject private var viewModel = ServicesViewModel()
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        NavigationStack {
            List {
                if viewModel.filteredSections.isEmpty {
                    EmptyView(icon: "magnifyingglass.circle.fill", title: "lblTitle_service_emotyView".localizedService())
                } else {
                    ForEach(viewModel.filteredSections) { section in
                        Section(header: Text(section.title)) {
                            if section.services.isEmpty {
                                Text("No services available")
                                    .foregroundColor(.secondary)
                            } else {
                                ForEach(section.services) { service in
                                    NavigationLink {
                                        ServiceDetailView(service: service)
                                    } label: {
                                        setupServiceView(item: service)
                                    }
                                }
                            }
                        }
                    }
                }
            }.searchable(text: $viewModel.searchText, placement: .navigationBarDrawer(displayMode: .always))
            .navigationTitle("lblNavigationTitle_drahimServices".localizedService())
            .preferredColorScheme(themeManager.colorScheme)
        }.onAppear{
            viewModel.getServices()
        }
    }
    
    @ViewBuilder
    func setupServiceView(item: ServiceItemModel) -> some View {
        HStack(spacing: 8) {
            Image(themeManager.colorScheme == .dark ? "\(item.icon).dark" : item.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .background(Circle().fill(Color.gray.opacity(0.2)))
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.headline)
                Text(item.subTitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}
