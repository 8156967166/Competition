//
//  CompetitionFilterTableViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import UIKit

class CompetitionFilterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameCompetitionFilter: UILabel!
    @IBOutlet weak var imageCompetitionFilter: UIImageView!
    @IBOutlet weak var imageSelectedCompetitionFilter: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var cellModel: CompetitionFilterTableViewModel! {
        didSet {
            setCompetitionFilter()
    
//            if cellModel.competitionDetails.nameOfCompetition == "All" {
//                imageSelectedCompetitionFilter.image = UIImage(named: "task")
//            }
        }
    }
    
    
    
    func setCompetitionFilter() {
        nameCompetitionFilter.text = cellModel.getnameCompetitionFilter()
        imageCompetitionFilter.image = UIImage(named: cellModel.getimageCompetitionFilter())
        imageSelectedCompetitionFilter.image = cellModel.isSelected ? UIImage(named: "task") : UIImage(named: "oval")
    }

}
