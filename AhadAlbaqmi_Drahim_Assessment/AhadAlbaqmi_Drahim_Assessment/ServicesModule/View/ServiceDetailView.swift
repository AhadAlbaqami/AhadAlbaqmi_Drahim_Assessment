//
//  ServiceDetailView.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/22/25.
//

import SwiftUI

struct ServiceDetailView: View {
    var service: ServiceItemModel
    @EnvironmentObject var themeManager: ThemeManager

    var body: some View {
        HStack(spacing: 10) {
            Image(themeManager.colorScheme == .dark ? "\(service.icon).dark" : service.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(service.title)
                    .font(.headline)
                Text(service.subTitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }.padding(.horizontal, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 80)
        .background(Color.backgroundColor)
        .cornerRadius(16)
        .padding(.horizontal, 10)
    }
}
