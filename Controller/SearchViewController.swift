//
//  SearchViewController.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 16/09/22.
//

//import UIKit
//
//class SearchViewController: UIViewController, UITextFieldDelegate {
//
//    @IBOutlet weak var collectionView: UICollectionView!
//    @IBOutlet weak var txtSearchBar: UITextField!
//
//    var searchPlayersArray = [Search]()
//    var searchArray = [Search]()
//
//    var socreInSearchVc = String()
//    var nameInSearchVc = String()
////    var searchArray:[String] = Array()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setModelCompetition()
//        // Do any additional setup after loading the view.
//    }
//
//    func setModelCompetition() {
//        let player1 = Search(strName: "Ronaldo", strScore: "9/10", functionality: .searchCell)
//        let player2 = Search(strName: "Dominic", strScore: "8/10", functionality: .searchCell)
//        let player3 = Search(strName: "Messi", strScore: "1/10", functionality: .searchCell)
//        let player4 = Search(strName: "Scott Ginty", strScore: "1/10", functionality: .searchCell)
//        let player5 = Search(strName: "Li Peng", strScore: "2/10", functionality: .searchCell)
//        let player6 = Search(strName: "Zhu Shiyu", strScore: "5/10", functionality: .searchCell)
//        let player7 = Search(strName: "Josimar", strScore: "7/10", functionality: .searchCell)
//        let player8 = Search(strName: "Ollie Rowe", strScore: "9/10", functionality: .searchCell)
//
//        searchPlayersArray = [player1, player2, player3, player4, player5, player6 , player7, player8]
//
//        for str in searchPlayersArray {
//            searchArray.append(str)
//        }
//        txtSearchBar.delegate = self
//        DispatchQueue.main.async {
//            self.collectionView.reloadData()
//        }
//    }
//
//    func textFieldShouldClear(_ textField: UITextField) -> Bool {
//        txtSearchBar.resignFirstResponder()
//        txtSearchBar.text = ""
//        self.searchArray.removeAll()
//        for str in searchPlayersArray {
//            searchArray.append(str)
//        }
//        collectionView.reloadData()
//        return false
////        return true
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if txtSearchBar.text?.count != 0 {
//            self.searchArray.removeAll()
//            for str in searchPlayersArray {
//                let range = str.name?.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
//                if range != nil {
//                    self.searchArray.append(str)
//                }
//            }
//        }
//        collectionView.reloadData()
//        self.view.endEditing(true)
//        return true
//    }
//}
//
//extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 1
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return searchArray.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cellSearchPlayers = searchArray[indexPath.item]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellSearchPlayers.identifier, for: indexPath) as! SearchCollectionViewCell
//        cell.setModel(setSearchModel: cellSearchPlayers)
//        nameInSearchVc = cell.playersNameInSearchVcell.text ?? ""
//        socreInSearchVc = cell.playersScoreInSearchVcell.text ?? ""
//        for model in searchArray {
//            nameInSearchVc = model.name ?? ""
//            socreInSearchVc = model.score ?? ""
////            name = model.name ?? ""
//        }
////        socre = cellSearchPlayers.score ?? ""
////        name = cellSearchPlayers.name ?? ""
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        return CGSize(width: 182, height: 200)
//    }
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//        performSegue(withIdentifier: "FIFAWorldCupViewController", sender: nil)
//
//    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if (segue.identifier == "FIFAWorldCupViewController") {
//            if let userVC = segue.destination as? FIFAWorldCupViewController {
//                userVC.nameOfPlayerInFWCVC = nameInSearchVc
//                userVC.scoreOfPlayerFWCVC = socreInSearchVc
//
//            }
//        }
//    }
//}




import UIKit

class SearchViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var txtSearchBar: UITextField!
    @IBOutlet weak var viewFilter: UIView!
    @IBOutlet weak var buttonFilter: UIButton!
    @IBOutlet weak var labelCompetition: UILabel!
    @IBOutlet weak var labelTeam: UILabel!
    @IBOutlet weak var buttonCompetitionFilter: UIButton!
    @IBOutlet weak var buttonTeamFilter: UIButton!

    // MARK: - variable
    
    var cellModelFromCompetition: CompetitionFilterTableViewModel!
    var cellModelPass: CompetitionFilterTableViewModel!
    var cellModelFromTeam: TeamFilterTableViewModel!
    var cellModelPassToTeam: TeamFilterTableViewModel!
    var nameModel: SearchModel = SearchModel([:])
    var cellModels: SearchTableViewCellModel!
    var searchPlayersArray = [SearchTableViewCellModel]()
    var searchArray = [SearchTableViewCellModel]()
    var iconClick = true
    
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPlayerModel()
        // Do any additional setup after loading the view.
        viewFilter.isHidden = true
    }
    
    
    // MARK: - Function
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        viewFilter.isHidden = true
    }
    
    func setPlayerModel() {
        let player1 = SearchTableViewCellModel(name: "Ronaldo", score: "9/10", strBirthday: "5 February 1985", strAge: "37", strHeight: "170", strWeight: "70", strNationality: "Portuguese", strPreferredfoot: "Right", strTShirtNo: "7", strPosition: "Right Winger", strPlayingTime: "20 min", strPassCount: "40", strTouches: "30", strFoulsMade: "0", strAssists: "0", strGoals: "5", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player2 = SearchTableViewCellModel(name: "Dominic", score: "8/10", strBirthday: "20 July 1990", strAge: "32", strHeight: "150", strWeight: "79", strNationality: "Philippine", strPreferredfoot: "Right", strTShirtNo: "4", strPosition: "Left Winger", strPlayingTime: "40 min", strPassCount: "60", strTouches: "20", strFoulsMade: "1", strAssists: "0", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player3 = SearchTableViewCellModel(name: "Messi", score: "1/10", strBirthday: "24 June 1987", strAge: "35", strHeight: "178", strWeight: "68", strNationality: "Argentine", strPreferredfoot: "Right", strTShirtNo: "5", strPosition: "Right Linger", strPlayingTime: "10 min", strPassCount: "20", strTouches: "40", strFoulsMade: "1", strAssists: "3", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player4 = SearchTableViewCellModel(name: "Scott Ginty", score: "1/10", strBirthday: "17 May 1991", strAge: "31", strHeight: "173", strWeight: "80", strNationality: "England", strPreferredfoot: "Left", strTShirtNo: "6", strPosition: "Left Winger", strPlayingTime: "10 min", strPassCount: "17", strTouches: "43", strFoulsMade: "0", strAssists: "3", strGoals: "7", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player5 = SearchTableViewCellModel(name: "Li Peng", score: "2/10", strBirthday: "5 February 1986", strAge: "38", strHeight: "158", strWeight: "75", strNationality: "Philippine", strPreferredfoot: "Left", strTShirtNo: "1", strPosition: "Right Winger", strPlayingTime: "28 min", strPassCount: "20", strTouches: "36", strFoulsMade: "2", strAssists: "0", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player6 = SearchTableViewCellModel(name: "Zhu Shiyu", score: "5/10", strBirthday: "16 April 1991", strAge: "31", strHeight: "169", strWeight: "69", strNationality: "China", strPreferredfoot: "Right", strTShirtNo: "8", strPosition: "Right Winger", strPlayingTime: "30 min", strPassCount: "23", strTouches: "47", strFoulsMade: "0", strAssists: "0", strGoals: "1", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player7 = SearchTableViewCellModel(name: "Josimar", score: "7/10", strBirthday: "19 September 1961", strAge: "61", strHeight: "175", strWeight: "73", strNationality: "Brazil", strPreferredfoot: "Right", strTShirtNo: "2", strPosition: "Left Winger", strPlayingTime: "90 min", strPassCount: "27", strTouches: "73", strFoulsMade: "0", strAssists: "0", strGoals: "1", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
        
        let player8 = SearchTableViewCellModel(name: "Ollie Rowe", score: "9/10", strBirthday: "22 March 1991", strAge: "31", strHeight: "185", strWeight: "85", strNationality: "England", strPreferredfoot: "Left", strTShirtNo: "10", strPosition: "Right Winger",  strPlayingTime: "90 min", strPassCount: "36", strTouches: "83", strFoulsMade: "0", strAssists: "1", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .searchCell)
       
        searchPlayersArray = [player1, player2, player3, player4, player5, player6, player7, player8]
        
        for str in searchPlayersArray {
            searchArray.append(str)
        }
         txtSearchBar.delegate = self
         DispatchQueue.main.async {
            self.collectionView.reloadData()
         }
    }
    
    
    // MARK: - TextFieldDelegates
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        txtSearchBar.resignFirstResponder()
        txtSearchBar.text = ""
        self.searchArray.removeAll()
        for str in searchPlayersArray {
            searchArray.append(str)
        }
        collectionView.reloadData()
        return false
    //  return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if txtSearchBar.text?.count != 0 {
            self.searchArray.removeAll()
            for str in searchPlayersArray {
                let range = str.searchPlayerDetails.name.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
                    if range != nil {
                        self.searchArray.append(str)
                    }
            }
        }
        collectionView.reloadData()
        self.view.endEditing(true)
        return true
    }
    
    
    // MARK: - ButtonAction
    
    @IBAction func buttonActionFilter(sender: UIButton) {
        if(iconClick == true) {
            viewFilter.isHidden = false
        } else {
            viewFilter.isHidden = true
        }
        iconClick = !iconClick
    }
    
    @IBAction func buttonActionCompetitionFilter(sender: UIButton) {
        
        if cellModelFromCompetition?.isSelected == true {
            cellModelPass = cellModelFromCompetition
            print("Selected Animal Name ---> \(cellModelPass.competitionDetails.nameOfCompetition)")
            performSegue(withIdentifier: "CompetitionFilterViewController", sender: nil)
        }
        
        else {
            performSegue(withIdentifier: "CompetitionFilterViewController", sender: nil)
        }
    }
    
    @IBAction func buttonActionTeamFilter(sender: UIButton) {
        
        if cellModelFromTeam?.isSelected == true {
            cellModelPassToTeam = cellModelFromTeam
            performSegue(withIdentifier: "TeamFilterViewController", sender: nil)
        }
        else {
            performSegue(withIdentifier: "TeamFilterViewController", sender: nil)
        }
        
    }
    
    @IBAction func buttonActionClearFilter(sender: UIButton) {
        labelCompetition.text = "Competition"
        labelTeam.text = "Teams"
    }
}

// MARK: - Collection

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellModel = searchArray[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.identifier, for: indexPath) as! SearchCollectionViewCell
        cell.cellModel = cellModel
        cellModels = cellModel
        
        if cellModel.isSelected == true {
            performSegue(withIdentifier: "FIFAWorldCupViewController", sender: nil)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 182, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let cellModel = searchArray[indexPath.row]
        
        for model in searchArray {
            model.isSelected = false
        }
        
        cellModel.isSelected = true
        
        collectionView.reloadData()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "CompetitionFilterViewController" {
            let secondViewController = segue.destination as! CompetitionFilterViewController
                secondViewController.delegate = self
                secondViewController.cellModelFromSearchToCompetition = cellModelPass
        }
        
        if segue.identifier == "TeamFilterViewController" {
            let secondViewController = segue.destination as! TeamFilterViewController
                secondViewController.delegate = self
                secondViewController.cellModelFromSearchToTeam = cellModelPassToTeam
                
        }
        
        if (segue.identifier == "FIFAWorldCupViewController") {
            if let userVC = segue.destination as? FIFAWorldCupViewController {
                userVC.nameOfPlayerInFWCVC = cellModels.searchPlayerDetails.name
                userVC.scoreOfPlayerFWCVC = cellModels.searchPlayerDetails.score
                userVC.birthdayofPlayerFWCVC = cellModels.searchPlayerDetails.birthday
                userVC.ageofPlayerFWCVC = cellModels.searchPlayerDetails.age
                userVC.heightofPlayerFWCVC = cellModels.searchPlayerDetails.height
                userVC.weightofPlayerFWCVC = cellModels.searchPlayerDetails.weight
                userVC.nationalityofPlayerFWCVC = cellModels.searchPlayerDetails.nationality
                userVC.preferredfootofPlayerFWCVC = cellModels.searchPlayerDetails.preferredfoot
                userVC.TshirtNoOfPlayerFWCVC = cellModels.searchPlayerDetails.tshirtNumber
                userVC.positionofPlayerFWCVC = cellModels.searchPlayerDetails.position
                userVC.playingTimeofPlayerFWCVC = cellModels.searchPlayerDetails.playingTime
                userVC.passCountofPlayerFWCVC = cellModels.searchPlayerDetails.passCount
                userVC.touchesofPlayerFWCVC = cellModels.searchPlayerDetails.touches
                userVC.foulsMadeofPlayerFWCVC = cellModels.searchPlayerDetails.foulsMade
                userVC.assistsofPlayerFWCVC = cellModels.searchPlayerDetails.assists
                userVC.goalsofPlayerFWCVC = cellModels.searchPlayerDetails.goals
                userVC.yellowCardOfPlayerFWCVC = cellModels.searchPlayerDetails.yellowCard
                userVC.redCardOfPlayerFWCVC = cellModels.searchPlayerDetails.redCard
    
            }
        }
    }
}



extension SearchViewController: DatapassToSearchVCDelegate, DatapassTeamToSearchVCDelegate {
    
    func cellModel(cellModelInTeamFilter: TeamFilterTableViewModel) {
        labelTeam.text = cellModelInTeamFilter.getnameTeamFilter()
        cellModelFromTeam = cellModelInTeamFilter
        buttonActionTeamFilter(sender: buttonTeamFilter)
    }
    
    func cellModel(cellModelInCompetitionFilter: CompetitionFilterTableViewModel) {
        labelCompetition.text = cellModelInCompetitionFilter.getnameCompetitionFilter()
        cellModelFromCompetition = cellModelInCompetitionFilter
        print("Selected Animal Name ---> \(cellModelFromCompetition.competitionDetails.nameOfCompetition)")
        buttonActionCompetitionFilter(sender: buttonFilter)
    }
}
