//
//  localizedService.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/22/25.
//

import Foundation

extension String {
   func localizedService(bundle: Bundle = .main, tableName: String = "ServicesLocalizable") -> String {
       return NSLocalizedString(self, tableName: tableName, bundle: bundle, value: "**\(self)**", comment: "")
   }
}
