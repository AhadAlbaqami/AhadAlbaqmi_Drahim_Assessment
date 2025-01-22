//
//  ServicesViewModel.swift
//  AhadAlbaqmi_Drahim_Assessment
//
//  Created by Ahad Albaqami on 1/21/25.
//

import Foundation
class ServicesViewModel: ObservableObject {
    @Published var sections: [ServicesModel] = []
    @Published var searchText = ""

    var filteredSections: [ServicesModel] {
        if searchText.isEmpty {
            return sections
        } else {
            return sections.compactMap { section -> ServicesModel? in
                let filteredServices = section.services.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
                return filteredServices.isEmpty ? nil : ServicesModel(title: section.title, services: filteredServices)
            }
        }
    }
    
    func getServices() {
        sections = [
            ServicesModel(
                title: "lblSectionTitle_InvestmentServices".localizedService(),
                services: [
                    ServiceItemModel(icon: "services.investmentCalculator", title: "lblTitle_service_investmentCalculator".localizedService(), subTitle: "lblSubTitle_service_investmentCalculator".localizedService()),
                    ServiceItemModel(icon: "services.createStockTrackingPortfolio", title: "lblTitle_service_createTrackingPortfolio".localizedService(), subTitle: "lblSubTitle_service_createTrackingPortfolio".localizedService()),
                    ServiceItemModel(icon: "services.createCustomPortfolio", title: "lblTitle_service_createCustomPortfolio".localizedService(), subTitle: "lblSubTitle_service_createCustomPortfolio".localizedService()),
                    ServiceItemModel(icon: "services.investmentGoals", title: "lblTitle_service_investmentGoals".localizedService(), subTitle: "lblSubTitle_service_investmentGoals".localizedService()),
                    ServiceItemModel(icon: "services.recurringPayments", title: "lblTitle_service_recurringPayments".localizedService(), subTitle: "lblSubTitle_service_recurringPayments".localizedService()),
                    ServiceItemModel(icon: "services.createPortfolio", title: "lblTitle_service_createPortfolio".localizedService(), subTitle: "lblSubTitle_service_createPortfolio".localizedService())
                ]
            ),
            ServicesModel(
                title: "lblSectionTitle_expenseManagementServices".localizedService(),
                services: [
                    ServiceItemModel(icon: "services.createBudget", title: "lblTitle_service_createBudget".localizedService(), subTitle: "lblSubTitle_service_createBudget".localizedService()),
                    ServiceItemModel(icon: "services.createManualAccount", title: "lblTitle_service_createManualAccount".localizedService(), subTitle: "lblSubTitle_service_createManualAccount".localizedService()),
                    ServiceItemModel(icon: "services.linkBank", title: "lblTitle_service_linkBank".localizedService(), subTitle: "lblSubTitle_service_linkBank".localizedService())
                ]
            ),
            ServicesModel(
                title: "lblSectionTitle_GeneralServices".localizedService(),
                services: [
                    ServiceItemModel(icon: "services.assetsManagement", title: "lblTitle_service_assetsManagement".localizedService(), subTitle: "lblSubTitle_service_assetsManagement".localizedService()),
                    ServiceItemModel(icon: "services.drahimGPT", title: "lblTitle_service_drahimGPT".localizedService(), subTitle: "lblSubTitle_service_drahimGPT".localizedService()),
                    ServiceItemModel(icon: "services.drahimPlus", title: "lblTitle_service_drahimPlus".localizedService(), subTitle: "lblSubTitle_service_drahimPlus".localizedService()),
                    ServiceItemModel(icon: "services.zakatCalculator", title: "lblTitle_service_zakatCalculator".localizedService(), subTitle: "lblSubTitle_service_zakatCalculator".localizedService())
                ]
            )
        ]
    }
}
