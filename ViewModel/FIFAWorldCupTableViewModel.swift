//
//  FIFAWorldCupTableViewModel.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 22/09/22.
//


import Foundation
enum SetFunctionality {
    case OverviewCell
    case compareCell
    case overviewImg
    case statsCard
    case comapreProgressCell
}

class FIFAWorldCupTableViewModel {
    
    // MARK: - variable
    
    var identifier: String = "table.cell"
    var cellType:SetFunctionality = .OverviewCell
    var playerDetails: FIFAWorldCupModel = FIFAWorldCupModel([:])
   
    init(strtitle1: String, strvalueOfTitle1: String, strtitle2: String, strvalueOfTitle2: String, cellType:SetFunctionality) {
        self.playerDetails.title1 = strtitle1
        self.playerDetails.valueOfTitle1 = strvalueOfTitle1
        self.playerDetails.title2 = strtitle2
        self.playerDetails.valueOfTitle2 = strvalueOfTitle2
        self.cellType = cellType
        switch cellType {
        case .OverviewCell:
            identifier = "table.cell"
        case .compareCell:
            identifier = "compareTable.cell"
        case .overviewImg:
            identifier = "overviewimg.cell"
        case .statsCard:
            identifier = "StatsCard.cell"
        case .comapreProgressCell:
            identifier = "comapreProgress.cell"
        }
    }
    
    // MARK: - Function
    
    func gettitle1() -> String {
        
        return playerDetails.title1
        
    }
    func getvalueOfTitle1() -> String {
        return playerDetails.valueOfTitle1
    }
    func getTitle2() -> String {
        return playerDetails.title2
    }
    func getvalueOfTitle2() -> String {
        return playerDetails.valueOfTitle2
    }
}

