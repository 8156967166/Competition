//
//  FIFAWorldCup.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 19/09/22.
//

//import Foundation
//enum SetFunctionality {
//    case OverviewCell
//    case compareCell
//    case overviewImg
//    case statsCard
//}
//
//class FIFAWorldCup {
//    var title1: String?
//    var title2: String?
//    var valueOfTitle1: String?
//    var valueOfTitle2: String?
//    var type: SetFunctionality?
//    var identifier: String = ""
//    init(strtitle1: String,strtitle2: String, strvalueOfTitle1: String, strvalueOfTitle2: String, functionality: SetFunctionality) {
//        self.title1 = strtitle1
//        self.title2 = strtitle2
//        self.valueOfTitle1 = strvalueOfTitle1
//        self.valueOfTitle2 = strvalueOfTitle2
//        self.type = functionality
//        switch type {
//        case .OverviewCell:
//            identifier = "table.cell"
//        case .compareCell:
//            identifier = "compareTable.cell"
//        case .overviewImg:
//            identifier = "overviewimg.cell"
//        case .statsCard:
//            identifier = "StatsCard.cell"
//        case .none:
//            print("None")
//        }
//    }
//}









import Foundation

class FIFAWorldCupModel {
    var title1: String = ""
    var title2: String = ""
    var valueOfTitle1: String = ""
    var valueOfTitle2: String = ""
    
    init(_ dict: [String: Any]) {
        self.title1 = dict["title1"] as? String ?? ""
        self.title2 = dict["title2"] as? String ?? ""
        self.valueOfTitle1 = dict["valueOfTitle1"] as? String ?? ""
        self.valueOfTitle2 = dict["valueOfTitle2"] as? String ?? ""
    }
}










//enum SetFunctionalies {
//    case comparePersonCell
//    case addPlayerCell
//    case selectedPlayer
//}
//
//class FIFAWorldCupCollection {
//    var nameInCompareCollection: String?
//    var scoreInComparecollection: String?
//    var type: SetFunctionalies?
//    var identifier: String = ""
//    init(strtitle: String,strscore: String, functionality: SetFunctionalies) {
//        self.nameInCompareCollection = strtitle
//        self.scoreInComparecollection = strscore
//        self.type = functionality
//        switch type {
//        case .comparePersonCell:
//            identifier = "comparePerson.cell"
//        case .addPlayerCell:
//            identifier = "compare.cell"
//        case .selectedPlayer:
//            identifier = "SelectedPlayer.cell"
//        case .none:
//            print("None")
//        }
//    }
//}
//



import Foundation

class FIFAWorldCupCollection {
    var nameInCompareCollection: String = ""
    var scoreInComparecollection: String = ""
    
    init(_ dict: [String: Any]) {
        self.nameInCompareCollection = dict["nameInCompareCollection"] as? String ?? ""
        self.scoreInComparecollection = dict["scoreInComparecollection"] as? String ?? ""
    }
}

