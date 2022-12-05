//
//  SearchCollectionViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 16/09/22.
//

//import UIKit
//
//class SearchCollectionViewCell: UICollectionViewCell {
//    @IBOutlet weak var playersNameInSearchVcell: UILabel!
//    @IBOutlet weak var playersScoreInSearchVcell: UILabel!
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
//
//    func setModel(setSearchModel: Search) {
//        self.playersNameInSearchVcell.text = setSearchModel.name
//        self.playersScoreInSearchVcell.text = setSearchModel.score
//    }
//}






import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlet
    
    @IBOutlet weak var playersNameInSearchVcell: UILabel?
    @IBOutlet weak var playersScoreInSearchVcell: UILabel?
    
    // MARK: - variable
    
    var nameInSearchVc = String()
    var socreInSearchVc = String()
    var birthdayInSearchVc = String()
    var ageInSearchVc = String()
    var heightInSearchVc = String()
    var weightInSearchVc = String()
    var nationalityInSearchVc = String()
    var preferredInSearchVc = String()
    var tshirtNoInSearchVc = String()
    var positionInSearchVc = String()
    var playingTimeInSearchVc = String()
    var passCountInSearchVc = String()
    var touchesInSearchVc = String()
    var foulsMadeInSearchVc = String()
    var assistsInSearchVc = String()
    var goalsInSearchVc = String()
    var yellowCardInSearchVc = String()
    var redCardInSearchVc = String()
    
    var cellModel: SearchTableViewCellModel! {
        didSet {
            setCellItems()
            setSearchPlayerDetails()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Function
    
    func setSearchPlayerDetails() {
        nameInSearchVc = cellModel.searchPlayerDetails.name
        socreInSearchVc = cellModel.searchPlayerDetails.score
        birthdayInSearchVc = cellModel.searchPlayerDetails.birthday
        ageInSearchVc = cellModel.searchPlayerDetails.age
        heightInSearchVc = cellModel.searchPlayerDetails.height
        weightInSearchVc = cellModel.searchPlayerDetails.weight
        nationalityInSearchVc = cellModel.searchPlayerDetails.nationality
        preferredInSearchVc = cellModel.searchPlayerDetails.preferredfoot
        tshirtNoInSearchVc = cellModel.searchPlayerDetails.tshirtNumber
        positionInSearchVc = cellModel.searchPlayerDetails.position
        playingTimeInSearchVc = cellModel.searchPlayerDetails.playingTime
        passCountInSearchVc = cellModel.searchPlayerDetails.passCount
        touchesInSearchVc = cellModel.searchPlayerDetails.touches
        foulsMadeInSearchVc = cellModel.searchPlayerDetails.foulsMade
        assistsInSearchVc = cellModel.searchPlayerDetails.assists
        goalsInSearchVc = cellModel.searchPlayerDetails.goals
        yellowCardInSearchVc = cellModel.searchPlayerDetails.yellowCard
        redCardInSearchVc = cellModel.searchPlayerDetails.redCard
    }
    
    func setCellItems() {
        playersNameInSearchVcell?.text = cellModel.getName()
        playersScoreInSearchVcell?.text = cellModel.getScore()
    }
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "FIFAWorldCupViewController") {
            if let userVC = segue.destination as? FIFAWorldCupViewController {
                userVC.birthdayofPlayerFWCVC = birthdayInSearchVc
            }
//        }
    }

}


