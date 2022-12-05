//
//  SearchTableViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 22/09/22.
//

import Foundation
enum Functionalies{
    case searchCell
}

class SearchTableViewCellModel {
    
    // MARK: - variable
    
    var identifier: String = "collection.cell"
    var cellType:Functionalies = .searchCell
    var searchPlayerDetails: SearchModel = SearchModel([:])
    var isSelected: Bool = false
    
    init(name: String, score: String, strBirthday: String, strAge: String, strHeight: String, strWeight: String, strNationality: String, strPreferredfoot: String, strTShirtNo: String, strPosition: String, strPlayingTime: String, strPassCount: String, strTouches: String, strFoulsMade: String, strAssists: String, strGoals: String, strYellowCard: String, strRedCard: String, cellType:Functionalies) {
        self.searchPlayerDetails.name = name
        self.searchPlayerDetails.score = score
        self.searchPlayerDetails.birthday = strBirthday
        self.searchPlayerDetails.age = strAge
        self.searchPlayerDetails.height = strHeight
        self.searchPlayerDetails.weight = strWeight
        self.searchPlayerDetails.nationality = strNationality
        self.searchPlayerDetails.preferredfoot = strPreferredfoot
        self.searchPlayerDetails.tshirtNumber = strTShirtNo
        self.searchPlayerDetails.position = strPosition
        self.searchPlayerDetails.playingTime = strPlayingTime
        self.searchPlayerDetails.passCount = strPassCount
        self.searchPlayerDetails.touches = strTouches
        self.searchPlayerDetails.foulsMade = strFoulsMade
        self.searchPlayerDetails.assists = strAssists
        self.searchPlayerDetails.goals = strGoals
        self.searchPlayerDetails.yellowCard = strYellowCard
        self.searchPlayerDetails.redCard = strRedCard
        self.cellType = cellType
        switch cellType {
        case .searchCell:
            identifier = "collection.cell"
        }
    }
    
    // MARK: - Function
    
    
    func getName() -> String {
        return searchPlayerDetails.name
    }
    func getScore() -> String {
        return searchPlayerDetails.score
    }
    
}
