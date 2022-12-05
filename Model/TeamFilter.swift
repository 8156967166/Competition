//
//  TeamFilter.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import Foundation

class TeamFilterModel {
    var nameOfTeamFilter: String = ""
    var imageOfTeamFilter: String = ""
    var imageSelected: String = ""
   
    
    init(_ dict: [String: Any]) {
        self.nameOfTeamFilter = dict["nameOfTeamFilter"] as? String ?? ""
        self.imageOfTeamFilter = dict["imageOfTeamFilter"] as? String ?? ""
        self.imageSelected = dict["imageSelected"] as? String ?? ""
       
    }
}
