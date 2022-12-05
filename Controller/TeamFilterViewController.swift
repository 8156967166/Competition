//
//  TeamFilterViewController.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 27/09/22.
//

import UIKit

protocol DatapassTeamToSearchVCDelegate {
    
    func cellModel(cellModelInTeamFilter: TeamFilterTableViewModel)

}

class TeamFilterViewController: UIViewController {
    
    // MARK: - Outlet
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var viewTeamFilter: UIView!
    
    // MARK: - Variable
    
    var delegate: DatapassTeamToSearchVCDelegate?
    var teamFilterArray = [TeamFilterTableViewModel]()
    var cellModelFromSearchToTeam: TeamFilterTableViewModel!
    var cellModelInCompetition: TeamFilterTableViewModel!
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.1)
        viewTeamFilter.layer.cornerRadius = 25
        viewTeamFilter.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        setTeamFilterModel()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Functions

    func setTeamFilterModel() {
        let teamFilter1 = TeamFilterTableViewModel(strName: "All", strImage: "footBall", cellType: .teamFilterCell)
        let teamFilter2 = TeamFilterTableViewModel(strName: "Trenkwalder Admira Wacker", strImage: "SpanishLaLigaImg", cellType: .teamFilterCell)
        let teamFilter3 = TeamFilterTableViewModel(strName: "RCD Espanyol", strImage: "UEFAChampionsLeagueImg", cellType: .teamFilterCell)
        let teamFilter4 = TeamFilterTableViewModel(strName: "Aves", strImage: "UEFANationsLeagueImg", cellType: .teamFilterCell)
        let teamFilter5 = TeamFilterTableViewModel(strName: "Montpellier U 18", strImage: "EnglishPremierLeagueImg", cellType: .teamFilterCell)
        let teamFilter6 = TeamFilterTableViewModel(strName: "kano pillars", strImage: "EnglishPremierLeagueImg", cellType: .teamFilterCell)
        
        
        teamFilterArray.append(teamFilter1)
        teamFilterArray.append(teamFilter2)
        teamFilterArray.append(teamFilter3)
        teamFilterArray.append(teamFilter4)
        teamFilterArray.append(teamFilter5)
        teamFilterArray.append(teamFilter6)
        

        for teamFilter in teamFilterArray {
            if teamFilter.teamDetails.nameOfTeamFilter == cellModelFromSearchToTeam?.getnameTeamFilter() {
                teamFilter.isSelected = true
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

extension TeamFilterViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamFilterArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = teamFilterArray[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.identifier, for: indexPath) as! TeamFilterTableViewCell
        cell.cellModel = cellModel
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cellModel = teamFilterArray[indexPath.row]

        for model in teamFilterArray {
            model.isSelected = false
        }

        cellModel.isSelected = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.dismiss(animated: true, completion: nil)
        }
       
        tableView.reloadData()
        
        delegate?.cellModel(cellModelInTeamFilter: cellModel)
      
        
    }
    
}
