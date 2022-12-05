//
//  AddPlayerCollectionViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 21/09/22.
//

//import UIKit
//
//class AddPlayerCollectionViewCell: UICollectionViewCell {
//    @IBOutlet weak var playersNameInAddPlayer: UILabel!
//    @IBOutlet weak var playersScoreInAddPlayer: UILabel!
//    @IBOutlet weak var imageSelectedplayer: UIImageView!
//    @IBOutlet weak var viewSelectedPlayer: UIView!
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//    }
//
//    func setModel(setSearchModel: AddPlayer) {
//        self.playersNameInAddPlayer.text = setSearchModel.nameInAddPlayer
//        self.playersScoreInAddPlayer.text = setSearchModel.scoreInAddPlayer
//    }
//}



import UIKit

class AddPlayerCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlet
    
    @IBOutlet weak var playersNameInAddPlayer: UILabel!
    @IBOutlet weak var playersScoreInAddPlayer: UILabel!
    @IBOutlet weak var imageSelectedplayer: UIImageView!
    @IBOutlet weak var viewSelectedPlayer: UIView!
    
    // MARK: - variable
    
    var selectedPlayerNameAddPlayer = String()
    var selectedPlayerscoreAddPlayer = String()
    var selectedPlayerBirthdayAddPlayer = String()
    var selectedPlayerAgeAddPlayer = String()
    var selectedPlayerHeightAddPlayer = String()
    var selectedPlayerWeightAddPlayer = String()
    var selectedPlayerNationalityAddPlayer = String()
    var selectedPlayerPreferredAddPlayer = String()
    var selectedPlayerTshirtAddPlayer = String()
    var selectedPlayerPositionAddPlayer = String()
    var selectedPlayerPlayingTimeAddPlayer = String()
    var selectedPlayerPassCountAddPlayer = String()
    var selectedPlayerTouchesAddPlayer = String()
    var selectedPlayerFoulsMadeAddPlayer = String()
    var selectedPlayerAssistsAddPlayer = String()
    var selectedPlayerGoalsAddPlayer = String()
    var selectedPlayerYellowCard = String()
    var selectedPlayerRedCard = String()
    
    var cellModel: AddPlayerCollectionViewCellModel! {
        didSet {
            setCellItems()
            setAddPlayerDetails()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Function
    func setAddPlayerDetails() {
        selectedPlayerNameAddPlayer = cellModel.playerDetails.nameInAddPlayer
        selectedPlayerscoreAddPlayer = cellModel.playerDetails.scoreInAddPlayer
        selectedPlayerBirthdayAddPlayer = cellModel.playerDetails.birthday
        selectedPlayerAgeAddPlayer = cellModel.playerDetails.age
        selectedPlayerHeightAddPlayer = cellModel.playerDetails.height
        selectedPlayerWeightAddPlayer = cellModel.playerDetails.weight
        selectedPlayerNationalityAddPlayer = cellModel.playerDetails.nationality
        selectedPlayerPreferredAddPlayer = cellModel.playerDetails.preferredfoot
        selectedPlayerTshirtAddPlayer = cellModel.playerDetails.tshirtNumber
        selectedPlayerPositionAddPlayer = cellModel.playerDetails.position
        selectedPlayerPlayingTimeAddPlayer = cellModel.playerDetails.playingTime
        selectedPlayerPassCountAddPlayer = cellModel.playerDetails.passCount
        selectedPlayerTouchesAddPlayer = cellModel.playerDetails.touches
        selectedPlayerFoulsMadeAddPlayer = cellModel.playerDetails.foulsMade
        selectedPlayerAssistsAddPlayer = cellModel.playerDetails.assists
        selectedPlayerGoalsAddPlayer = cellModel.playerDetails.goals
        selectedPlayerYellowCard = cellModel.playerDetails.yellowCard
        selectedPlayerRedCard = cellModel.playerDetails.redCard
    }
    func setCellItems() {
        playersNameInAddPlayer.text = cellModel.getnameOfPlayer()
        playersScoreInAddPlayer.text = cellModel.getscoreOfPlayer()
    }
}
