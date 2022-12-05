//
//  CompetitionViewController.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 13/09/22.
//

import UIKit


class CompetitionViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlet
    
    @IBOutlet weak var myTabBar: UITabBar?
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var txtSearchBar: UITextField!
    
    // MARK: - variable
    
    var competitionArray = [Competition]()
    var searchArray = [Competition]()
//    var searchArray:[String] = Array()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setModelCompetition()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - function
    
    func setModelCompetition() {
        let competition1 = Competition(strtitle: "Fifa World Cup 2022", functionality: .competitionCell)
        let competition2 = Competition(strtitle: "Euro", functionality: .competitionCell)
        let competition3 = Competition(strtitle: "Copa America", functionality: .competitionCell)
        let competition4 = Competition(strtitle: "Fifa World Cup 2022", functionality: .competitionCell)
        let competition5 = Competition(strtitle: "Euro", functionality: .competitionCell)
        let competition6 = Competition(strtitle: "Copa America", functionality: .competitionCell)
        competitionArray = [competition1, competition2, competition3, competition4, competition5, competition6]
        
        for str in competitionArray {
            searchArray.append(str)
        }
        txtSearchBar.delegate = self
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        txtSearchBar.resignFirstResponder()
        txtSearchBar.text = ""
        self.searchArray.removeAll()
        for str in competitionArray {
            searchArray.append(str)
        }
        tableView.reloadData()
        return false
//        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if txtSearchBar.text?.count != 0 {
            self.searchArray.removeAll()
            for str in competitionArray {
                let range = str.title?.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
                if range != nil {
                    self.searchArray.append(str)
                }
            }
        }
        tableView.reloadData()
        self.view.endEditing(true)
        return true
    }
}

// MARK: - Table

extension CompetitionViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return competitionArray.count
        return searchArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellCompetition = searchArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellCompetition.identifier, for: indexPath) as! CompetitionTableViewCell
        cell.setModel(setCompetitionModel: cellCompetition)
        return cell
    }
}


// All
// spanish La Liga
// UEFA Champions League
// UEFA Nations League
// English Premier League

// All
// Trenkwalder Admira Wacker
//RCD Espanyol
//Aves
// Montpellier U 18
// Chateauroux U 18
// kano pillars
