//
//  ServicesModel.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/21/25.
//

import Foundation

struct ServicesModel: Identifiable {
    let id: UUID = UUID()
    let title: String
    let services: [ServiceItemModel]
}

struct ServiceItemModel: Identifiable, Hashable {
    let id: UUID = UUID()
    let icon: String
    let title: String
    let subTitle: String
}
