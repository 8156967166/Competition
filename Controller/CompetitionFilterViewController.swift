//  CompetitionFilterViewController.swift
//  CompetitionProject
//  Created by Bimal@AppStation on 27/09/22.


import UIKit

protocol DatapassToSearchVCDelegate {
    
    func cellModel(cellModelInCompetitionFilter: CompetitionFilterTableViewModel)

}

class CompetitionFilterViewController: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewCompetitionFilter: UIView!
    
    // MARK: - Variable
    
    var delegate: DatapassToSearchVCDelegate?
    var competitionFilterArray = [CompetitionFilterTableViewModel]()
    var showImageIndex : Int?
    var cellModelFromSearchToCompetition: CompetitionFilterTableViewModel!
    var isselect = Bool()
    var cellModelInCompetition: CompetitionFilterTableViewModel!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        viewCompetitionFilter.layer.cornerRadius = 25
        viewCompetitionFilter.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        modelCompetitionFilter()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions
    
    func modelCompetitionFilter() {
        let competitionFilter1 = CompetitionFilterTableViewModel(strName: "All", strImage: "footBall", cellType: .competitionFilterCell)
        let competitionFilter2 = CompetitionFilterTableViewModel(strName: "spanish La Liga", strImage: "SpanishLaLigaImg", cellType: .competitionFilterCell)
        let competitionFilter3 = CompetitionFilterTableViewModel(strName: "UEFA Champions League", strImage: "UEFAChampionsLeagueImg", cellType: .competitionFilterCell)
        let competitionFilter4 = CompetitionFilterTableViewModel(strName: "UEFA Nations League", strImage: "UEFANationsLeagueImg", cellType: .competitionFilterCell)
        let competitionFilter5 = CompetitionFilterTableViewModel(strName: "English Premier League", strImage: "EnglishPremierLeagueImg", cellType: .competitionFilterCell)
        
        
        competitionFilterArray.append(competitionFilter1)
        competitionFilterArray.append(competitionFilter2)
        competitionFilterArray.append(competitionFilter3)
        competitionFilterArray.append(competitionFilter4)
        competitionFilterArray.append(competitionFilter5)
        
        
        for competition in competitionFilterArray {
            if competition.competitionDetails.nameOfCompetition == cellModelFromSearchToCompetition?.getnameCompetitionFilter() {
                competition.isSelected = true
            }
        }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    @IBAction func buttonBack(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}

// MARK: - Table

extension CompetitionFilterViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return competitionFilterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = competitionFilterArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.identifier, for: indexPath) as! CompetitionFilterTableViewCell
        cell.cellModel = cellModel
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cellModel = competitionFilterArray[indexPath.row]

        for model in competitionFilterArray {
            model.isSelected = false
        }

        cellModel.isSelected = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.dismiss(animated: true, completion: nil)
        }
       
        tableView.reloadData()
        
        delegate?.cellModel(cellModelInCompetitionFilter: cellModel)
        
    }
    
}
