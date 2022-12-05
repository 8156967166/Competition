//
//  Competition.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 13/09/22.
//

import Foundation

enum Functionality {
    case competitionCell
    
}
class Competition {
    var title: String?
    var type: Functionality?
    var identifier: String = ""
    init(strtitle: String, functionality: Functionality) {
        self.title = strtitle
        self.type = functionality
        switch type {
        case .competitionCell:
            identifier = "table.cell"
        case .none:
            print("None")
        }
    }
}
