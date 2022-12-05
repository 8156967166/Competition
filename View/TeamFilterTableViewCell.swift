//
//  TeamFilterTableViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import UIKit

class TeamFilterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameTeamFilter: UILabel!
    @IBOutlet weak var imageTeamFilter: UIImageView!
    @IBOutlet weak var selectedImgTeamFilter: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var cellModel: TeamFilterTableViewModel! {
        didSet {
            setTeamFilter()
            
            
//            if cellModel.competitionDetails.nameOfCompetition == "spanish La Liga" {
//                imageSelectedCompetitionFilter.image = UIImage(named: "task")
//            }
        }
    }
    
    
    func setTeamFilter() {
        nameTeamFilter.text = cellModel.getnameTeamFilter()
        
        imageTeamFilter.image = UIImage(named: cellModel.getimageTeamFilter())
        
        selectedImgTeamFilter.image = cellModel.isSelected ? UIImage(named: "task") : UIImage(named: "oval")
    }

}
