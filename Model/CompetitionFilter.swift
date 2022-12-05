//
//  CompetitionFilter.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import Foundation

class CompetitionFilterModel {
    var nameOfCompetition: String = ""
    var imageOfCompetition: String = ""
    var imageSelected: String = ""

    init(_ dict: [String: Any]) {
        self.nameOfCompetition = dict["nameOfCompetition"] as? String ?? ""
        self.imageOfCompetition = dict["imageOfCompetition"] as? String ?? ""
        self.imageSelected = dict["imageSelected"] as? String ?? ""
    }
}
