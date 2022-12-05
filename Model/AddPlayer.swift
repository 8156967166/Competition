//
//  AddPlayer.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 21/09/22.
//

//import Foundation
//enum setFunctionalies {
//    case searchCell
//}
//
//class AddPlayer {
//    var nameInAddPlayer: String?
//    var scoreInAddPlayer: String?
//    var type: setFunctionalies?
//    var isSelected: Bool = false
//    var identifier: String = ""
//    init(strName: String, strScore: String, functionality: setFunctionalies) {
//        self.nameInAddPlayer = strName
//        self.scoreInAddPlayer = strScore
//        self.type = functionality
//        switch type {
//        case .searchCell:
//            identifier = "addPlayer.Cell"
//        case .none:
//            print("None")
//        }
//    }
//}



import Foundation

class AddPlayerModel {
    var nameInAddPlayer: String = ""
    var scoreInAddPlayer: String = ""
    var birthday: String = ""
    var age: String = ""
    var height: String = ""
    var weight: String = ""
    var nationality: String = ""
    var preferredfoot: String = ""
    var tshirtNumber: String = ""
    var position: String = ""
    var playingTime: String = ""
    var passCount: String = ""
    var touches: String = ""
    var foulsMade: String = ""
    var assists: String = ""
    var goals: String = ""
    var yellowCard: String = ""
    var redCard: String = ""
    
    
    init(_ dict: [String: Any]) {
        self.nameInAddPlayer = dict["nameInAddPlayer"] as? String ?? ""
        self.scoreInAddPlayer = dict["scoreInAddPlayer"] as? String ?? ""
         self.birthday = dict["birthday"] as? String ?? ""
        self.age = dict["age"] as? String ?? ""
        self.height = dict["height"] as? String ?? ""
        self.weight = dict["weight"] as? String ?? ""
        self.nationality = dict["nationality"] as? String ?? ""
        self.preferredfoot = dict["preferredfoot"] as? String ?? ""
        self.tshirtNumber = dict["tshirtNumber"] as? String ?? ""
        self.position = dict["position"] as? String ?? ""
        self.playingTime = dict["playingTime"] as? String ?? ""
        self.passCount = dict["passCount"] as? String ?? ""
        self.touches = dict["touches"] as? String ?? ""
        self.foulsMade = dict["foulsMade"] as? String ?? ""
        self.assists = dict["assists"] as? String ?? ""
        self.goals = dict["goals"] as? String ?? ""
        self.yellowCard = dict["yellowCard"] as? String ?? ""
        self.redCard = dict["redCard"] as? String ?? ""
    }
}
