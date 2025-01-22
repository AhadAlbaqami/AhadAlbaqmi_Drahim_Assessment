//
//  AhadAlbaqmi_Drahim_AssessmentApp.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/21/25.
//

import SwiftUI

@main
struct AhadAlbaqmi_Drahim_AssessmentApp: App {
    @StateObject private var themeManager = ThemeManager()
    var body: some Scene {
        WindowGroup {
            ServicesView()
                .environmentObject(themeManager)
        }
    }
}
