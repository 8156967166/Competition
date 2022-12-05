//
//  FIFACompareCollectionViewCellModel.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 22/09/22.
//


import Foundation
enum SetFunctionalies {
    case comparePersonCell
    case addPlayerCell
    case selectedPlayer
}

class FIFACompareCollectionViewCellModel {
    
    // MARK: - variable
    
    var identifier: String = "comparePerson.cell"
    var cellType:SetFunctionalies = .comparePersonCell
    var playerDetails: FIFAWorldCupCollection = FIFAWorldCupCollection([:])
   
    init(strtitle: String, strscore: String, cellType:SetFunctionalies) {
        self.playerDetails.nameInCompareCollection = strtitle
        self.playerDetails.scoreInComparecollection = strtitle
        self.cellType = cellType
        switch cellType {
        case .comparePersonCell:
            identifier = "comparePerson.cell"
        case .addPlayerCell:
            identifier = "compare.cell"
        case .selectedPlayer:
            identifier = "SelectedPlayer.cell"
        }
    }
    
    // MARK: - Function
    
    func getnameOfPlayer() -> String {
        return playerDetails.nameInCompareCollection
    }
    func getscoreOfPlayer() -> String {
        return playerDetails.scoreInComparecollection
    }
   
}

