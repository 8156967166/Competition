//
//  TeamFilterTableViewModel.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import Foundation

enum CellTypes {
    case teamFilterCell
    
}

class TeamFilterTableViewModel {
    
    // MARK: - variable
    
    var identifier: String = "TeamFilter.Cell"
    var cellType:CellTypes = .teamFilterCell
    var teamDetails: TeamFilterModel = TeamFilterModel([:])
    var isSelected: Bool = false
    init(strName: String, strImage: String, cellType:CellTypes) {
        self.teamDetails.nameOfTeamFilter = strName
        self.teamDetails.imageOfTeamFilter = strImage
        self.cellType = cellType
        switch cellType {
        case .teamFilterCell:
            identifier = "TeamFilter.Cell"
        }
    }
    
    func getnameTeamFilter() -> String {
        return teamDetails.nameOfTeamFilter
    }
    func getimageTeamFilter() -> String {
        return teamDetails.imageOfTeamFilter
    }

}

