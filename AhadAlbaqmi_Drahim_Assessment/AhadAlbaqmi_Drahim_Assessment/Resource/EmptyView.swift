//
//  EmptyView.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/22/25.
//

import SwiftUI

struct EmptyView: View {
    @State var icon: String?
    @State var title: String?
    
    var body: some View {
        VStack(spacing: 18) {
            Image(systemName: icon ?? "")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text(title ?? "")
                .font(.title)
        }.foregroundColor(.gray).frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    EmptyView()
}
