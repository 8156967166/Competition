//
//  AddPlayerCollectionViewCellModel.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 22/09/22.
//

import Foundation

enum setFunctionalies {
    case addPlayerSearchCell
}

class AddPlayerCollectionViewCellModel {
    
    // MARK: - variable
    
    var identifier: String = "addPlayer.Cell"
    var cellType:setFunctionalies = .addPlayerSearchCell
    var playerDetails: AddPlayerModel = AddPlayerModel([:])
    var isSelected: Bool = false
   
//    init(strtitle: String, strscore: String, strplayingtime: String, strPassCount: String, strTouches: String, strFoulsMade: String, strAssists: String, strGoal: String , cellType:setFunctionalies) {
    init(strtitle: String, strscore: String, strBirthday: String, strAge: String, strHeight: String, strWeight: String, strNationality: String, strPreferredfoot: String, strTShirtNo: String, strPosition: String, strPlayingTime: String, strPassCount: String, strTouches: String, strFoulsMade: String, strAssists: String, strGoals: String, strYellowCard: String, strRedCard: String, cellType:setFunctionalies) {
        self.playerDetails.nameInAddPlayer = strtitle
        self.playerDetails.scoreInAddPlayer = strscore
        self.playerDetails.birthday = strBirthday
        self.playerDetails.age = strAge
        self.playerDetails.height = strHeight
        self.playerDetails.weight = strWeight
        self.playerDetails.nationality = strNationality
        self.playerDetails.preferredfoot = strPreferredfoot
        self.playerDetails.tshirtNumber = strTShirtNo
        self.playerDetails.position = strPosition
        self.playerDetails.playingTime = strPlayingTime
        self.playerDetails.passCount = strPassCount
        self.playerDetails.touches = strTouches
        self.playerDetails.foulsMade = strFoulsMade
        self.playerDetails.assists = strAssists
        self.playerDetails.goals = strGoals
        self.playerDetails.yellowCard = strYellowCard
        self.playerDetails.redCard = strRedCard
        self.cellType = cellType
        switch cellType {
        case .addPlayerSearchCell:
            identifier = "addPlayer.Cell"
        
        }
    }
    
    // MARK: - Function
    
    func getnameOfPlayer() -> String {
        return playerDetails.nameInAddPlayer
    }
    func getscoreOfPlayer() -> String {
        return playerDetails.scoreInAddPlayer
    }
   
}

