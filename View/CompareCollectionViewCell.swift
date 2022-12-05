//
//  CompareCollectionViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 19/09/22.
//

//import UIKit
//
//class CompareCollectionViewCell: UICollectionViewCell {
//    @IBOutlet weak var labelName: UILabel?
//    @IBOutlet weak var selectedPlayerName: UILabel?
//    @IBOutlet weak var selectedPlayerScore: UILabel?
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//
//        // Initialization code
//    }
//
//    func setModel(setFIFAModelCollection: FIFAWorldCupCollection) {
//        labelName?.text = setFIFAModelCollection.nameInCompareCollection
//    }
//}


import UIKit


class CompareCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlet
    
    @IBOutlet weak var labelName: UILabel?
    @IBOutlet weak var labelscore: UILabel?
    @IBOutlet weak var selectedPlayerName: UILabel?
    @IBOutlet weak var selectedPlayerScore: UILabel?
    
    // MARK: - variable
    
    var cellModel: FIFACompareCollectionViewCellModel! {
        didSet {
            setCellItems()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Function
    
    func setCellItems() {
        labelName?.text = cellModel.getnameOfPlayer()
        selectedPlayerName?.text = cellModel.getnameOfPlayer()
        selectedPlayerScore?.text = cellModel.getscoreOfPlayer()
    }
    
    

}
