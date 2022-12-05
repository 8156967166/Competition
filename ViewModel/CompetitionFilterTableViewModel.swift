//
//  CompetitionFilterTableViewModel.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import Foundation

enum CellType {
    case competitionFilterCell
    
}

class CompetitionFilterTableViewModel {
    
    // MARK: - variable
    
    var identifier: String = "Compettionfilter.Cell"
    var cellType:CellType = .competitionFilterCell
    var competitionDetails: CompetitionFilterModel = CompetitionFilterModel([:])
    var isSelected: Bool = false
    
    init(strName: String, strImage: String, cellType:CellType) {
        self.competitionDetails.nameOfCompetition = strName
        self.competitionDetails.imageOfCompetition = strImage
        self.cellType = cellType
        switch cellType {
        case .competitionFilterCell:
            identifier = "Compettionfilter.Cell"
        }
    }
    
    func getnameCompetitionFilter() -> String {
        return competitionDetails.nameOfCompetition
    }
    func getimageCompetitionFilter() -> String {
        return competitionDetails.imageOfCompetition
    }
}

