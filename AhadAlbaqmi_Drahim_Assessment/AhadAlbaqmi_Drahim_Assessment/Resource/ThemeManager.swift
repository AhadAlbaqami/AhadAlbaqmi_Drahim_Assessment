//
//  ThemeManager.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/22/25.
//

import SwiftUI

class ThemeManager: ObservableObject {
    @Published var colorScheme: ColorScheme? = nil
    
    init() {
        self.colorScheme = UIScreen.main.traitCollection.userInterfaceStyle == .dark ? .dark : .light
    }
}
