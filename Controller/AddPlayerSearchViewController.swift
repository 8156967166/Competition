//
//  AddPlayerSearchViewController.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 20/09/22.
//

//import UIKit
//
//protocol DataEnteredDelegate {
//    func userDidEnterInformation(info: String)
//}
//
//class AddPlayerSearchViewController: UIViewController, UITextFieldDelegate {
//
//    @IBOutlet weak var collectionView: UICollectionView!
//    @IBOutlet weak var txtSearchBar: UITextField!
//    @IBOutlet weak var buttonCompare: UIButton!
//
//    var delegate: DataEnteredDelegate?
//
//    var searchPlayersArray = [AddPlayer]()
//    var searchArray = [AddPlayer]()
//
//    var socreInAddPlayerVc = String()
//    var nameInAddPlayerVc = String()
//    var getCompareModel: FIFAWorldCupCollection?
//    var receivecurrentIndexInAddplayer:IndexPath?
//    var selectedPlayerNameAddPlayer = String()
//    var selectedPlayerscoreAddPlayer = String()
////    var searchArray:[String] = Array()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setModelCompetition()
//        // Do any additional setup after loading the view.
//    }
//
//    func setModelCompetition() {
//        let player1 = AddPlayer(strName: "Ronaldo", strScore: "9/10", functionality: .searchCell)
//        let player2 = AddPlayer(strName: "Dominic", strScore: "8/10", functionality: .searchCell)
//        let player3 = AddPlayer(strName: "Messi", strScore: "1/10", functionality: .searchCell)
//        let player4 = AddPlayer(strName: "Scott Ginty", strScore: "1/10", functionality: .searchCell)
//        let player5 = AddPlayer(strName: "Li Peng", strScore: "2/10", functionality: .searchCell)
//        let player6 = AddPlayer(strName: "Zhu Shiyu", strScore: "5/10", functionality: .searchCell)
//        let player7 = AddPlayer(strName: "Josimar", strScore: "7/10", functionality: .searchCell)
//        let player8 = AddPlayer(strName: "Ollie Rowe", strScore: "9/10", functionality: .searchCell)
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
//                let range = str.nameInAddPlayer?.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
//                if range != nil {
//                    self.searchArray.append(str)
//                }
//            }
//        }
//        collectionView.reloadData()
//        self.view.endEditing(true)
//        return true
//    }
//
//    @IBAction func buttonActionCloseArrow(sender: UIButton) {
//        self.navigationController?.popViewController(animated: true)
//    }
//
//    @objc func buttonActionCompare(_ sender: UIButton) {
////        self.navigationController?.popViewController(animated: true)
//        showAlert()
//    }
//
//    @objc func buttonActionCompareNavigation(_ sender: UIButton) {
//        delegate?.userDidEnterInformation(info: selectedPlayerNameAddPlayer)
//
//        print("selectedPlayerNameAddPlayer : \(selectedPlayerNameAddPlayer)")
//        self.navigationController?.popViewController(animated: true)
//        if receivecurrentIndexInAddplayer?.item == 1 {
//            print("cureenet index ")
//        }
//
//        collectionView.reloadData()
////        guard  currentIndex.item == 1
////        else {
////            return
////        }
////        let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectedPlayer.cell", for: currentIndex)
//
//
//
////        showAlert()
//    }
//
//    func showAlert() {
//        print("Alert show")
//        let alertController = UIAlertController(title: "Alert", message: "The player id2 field is required", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        self.present(alertController, animated: true, completion: nil)
//    }
//
//}
//
//extension AddPlayerSearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellSearchPlayers.identifier, for: indexPath) as! AddPlayerCollectionViewCell
//        cell.setModel(setSearchModel: cellSearchPlayers)
//        nameInAddPlayerVc = cell.playersNameInAddPlayer.text ?? ""
//        for model in searchArray {
//            socreInAddPlayerVc = model.scoreInAddPlayer ?? ""
////            name = model.name ?? ""
//        }
//
//        if cellSearchPlayers.isSelected == true {
//            cell.viewSelectedPlayer.backgroundColor = .orange
//            cell.imageSelectedplayer.image = UIImage(named: "correct")
//            buttonCompare.addTarget(self, action: #selector(buttonActionCompareNavigation(_:)), for: .touchUpInside)
//            print("name : \(cellSearchPlayers.nameInAddPlayer!)")
//            selectedPlayerNameAddPlayer = cellSearchPlayers.nameInAddPlayer!
//            selectedPlayerscoreAddPlayer = cellSearchPlayers.scoreInAddPlayer!
//        }
//        else {
//            cell.imageSelectedplayer.image = UIImage(named: "plus")
//            cell.viewSelectedPlayer.backgroundColor = .gray
//            buttonCompare.addTarget(self, action: #selector(buttonActionCompare(_:)), for: .touchUpInside)
//        }
////        socre = cellSearchPlayers.score ?? ""
////        name = cellSearchPlayers.name ?? ""
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        return CGSize(width: 210, height: 200)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let cellSearchPlayers = searchArray[indexPath.row]
//        for model in searchArray {
//            model.isSelected = false
//        }
//        cellSearchPlayers.isSelected = true
//
//        collectionView.reloadData()
//    }
//}




import UIKit
protocol DataEnteredDelegate {
    
    func userDidEnterInformation(info: String)
    func selectedPlayerScore(score: String)
    func isSelectedPlayer(selected: Bool)
    func isNotSelectedPlayer(notSelect: Bool)
    func selectedPlayerdetails(birthday: String, age: String, height: String, weight: String, nationality: String, preferredFoot: String, tShirtNo: String, position: String, playingTime: String, passCount: String, touches: String, foulsMade: String, assists: String, goals: String, yellowCard: String, redCard: String)
    
}

class AddPlayerSearchViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var txtSearchBar: UITextField!
    @IBOutlet weak var buttonCompare: UIButton!
    
    // MARK: - variable
    
    var nameModel: AddPlayerModel = AddPlayerModel([:])
    
    var delegate: DataEnteredDelegate?
    
    var searchPlayersArray = [AddPlayerCollectionViewCellModel]()
    var searchArray = [AddPlayerCollectionViewCellModel]()
    var cellModels: AddPlayerCollectionViewCellModel!
    
    var socreInAddPlayerVc = String()
    var nameInAddPlayerVc = String()
    var getCompareModel: FIFAWorldCupCollection?
    var receivecurrentIndexInAddplayer:IndexPath?
    var isSelectedPlayer = Bool()
    var isNotSelectedPlayer = Bool()
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setEmpModel()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Function
    
    func setEmpModel() {
//
        let player1 = AddPlayerCollectionViewCellModel(strtitle: "Ronaldo", strscore: "9/10", strBirthday: "5 February 1985", strAge: "37", strHeight: "170", strWeight: "70", strNationality: "Portuguese", strPreferredfoot: "Right", strTShirtNo: "7", strPosition: "Right Winger", strPlayingTime: "20 min", strPassCount: "40", strTouches: "30", strFoulsMade: "0", strAssists: "0", strGoals: "5", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player2 = AddPlayerCollectionViewCellModel(strtitle: "Dominic", strscore: "8/10", strBirthday: "20 July 1990", strAge: "32", strHeight: "150", strWeight: "79", strNationality: "Philippine", strPreferredfoot: "Right", strTShirtNo: "4", strPosition: "Left Winger", strPlayingTime: "40 min", strPassCount: "60", strTouches: "20", strFoulsMade: "1", strAssists: "0", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player3 = AddPlayerCollectionViewCellModel(strtitle: "Messi", strscore: "1/10", strBirthday: "24 June 1987", strAge: "35", strHeight: "178", strWeight: "68", strNationality: "Argentine", strPreferredfoot: "Right", strTShirtNo: "5", strPosition: "Right Linger", strPlayingTime: "10 min", strPassCount: "20", strTouches: "40", strFoulsMade: "1", strAssists: "3", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player4 = AddPlayerCollectionViewCellModel(strtitle: "Scott Ginty", strscore: "1/10", strBirthday: "17 May 1991", strAge: "31", strHeight: "173", strWeight: "80", strNationality: "England", strPreferredfoot: "Left", strTShirtNo: "6", strPosition: "Left Winger", strPlayingTime: "10 min", strPassCount: "17", strTouches: "43", strFoulsMade: "0", strAssists: "3", strGoals: "7", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player5 = AddPlayerCollectionViewCellModel(strtitle: "Li Peng", strscore: "2/10", strBirthday: "5 February 1986", strAge: "38", strHeight: "158", strWeight: "75", strNationality: "Philippine", strPreferredfoot: "Left", strTShirtNo: "1", strPosition: "Right Winger", strPlayingTime: "28 min", strPassCount: "20", strTouches: "36", strFoulsMade: "2", strAssists: "0", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player6 = AddPlayerCollectionViewCellModel(strtitle: "Zhu Shiyu", strscore: "5/10", strBirthday: "16 April 1991", strAge: "31", strHeight: "169", strWeight: "69", strNationality: "China", strPreferredfoot: "Right", strTShirtNo: "8", strPosition: "Right Winger", strPlayingTime: "30 min", strPassCount: "23", strTouches: "47", strFoulsMade: "0", strAssists: "0", strGoals: "1", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player7 = AddPlayerCollectionViewCellModel(strtitle: "Josimar", strscore: "7/10", strBirthday: "19 September 1961", strAge: "61", strHeight: "175", strWeight: "73", strNationality: "Brazil", strPreferredfoot: "Right", strTShirtNo: "2", strPosition: "Left Winger", strPlayingTime: "90 min", strPassCount: "27", strTouches: "73", strFoulsMade: "0", strAssists: "0", strGoals: "1", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        let player8 = AddPlayerCollectionViewCellModel(strtitle: "Ollie Rowe", strscore: "9/10", strBirthday: "22 March 1991", strAge: "31", strHeight: "185", strWeight: "85", strNationality: "England", strPreferredfoot: "Left", strTShirtNo: "10", strPosition: "Right Winger",  strPlayingTime: "90 min", strPassCount: "36", strTouches: "83", strFoulsMade: "0", strAssists: "1", strGoals: "3", strYellowCard: "0", strRedCard: "0", cellType: .addPlayerSearchCell)
        
        searchPlayersArray = [player1, player2, player3, player4, player5, player6, player7, player8 ]
        
        for str in searchPlayersArray {
            searchArray.append(str)
        }
         txtSearchBar.delegate = self
         DispatchQueue.main.async {
            self.collectionView.reloadData()
         }
    }
    
    func showAlert() {
        print("Alert show")
        let alertController = UIAlertController(title: "Alert", message: "The player id2 field is required", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
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
    //        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if txtSearchBar.text?.count != 0 {
            self.searchArray.removeAll()
            for str in searchPlayersArray {
                let range = str.playerDetails.nameInAddPlayer.lowercased().range(of: textField.text!, options: .caseInsensitive, range: nil, locale: nil)
                    if range != nil {
                        self.searchArray.append(str)
                    }
            }
        }
        collectionView.reloadData()
        self.view.endEditing(true)
        return true
    }
    
    // MARK: - IBAction
    
    @IBAction func buttonActionCloseArrow(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func buttonActionCompare(_ sender: UIButton) {
       
    }

    @objc func buttonActionCompareNavigation(_ sender: UIButton) {
        if isSelectedPlayer == true {
            delegate?.userDidEnterInformation(info: cellModels.playerDetails.nameInAddPlayer)
            delegate?.selectedPlayerScore(score: cellModels.playerDetails.scoreInAddPlayer)
            delegate?.isSelectedPlayer(selected: isSelectedPlayer)
            delegate?.isNotSelectedPlayer(notSelect: isNotSelectedPlayer)
            delegate?.selectedPlayerdetails(birthday: cellModels.playerDetails.birthday, age: cellModels.playerDetails.age, height: cellModels.playerDetails.height, weight: cellModels.playerDetails.weight, nationality: cellModels.playerDetails.nationality, preferredFoot: cellModels.playerDetails.preferredfoot, tShirtNo: cellModels.playerDetails.tshirtNumber, position: cellModels.playerDetails.position, playingTime: cellModels.playerDetails.playingTime, passCount: cellModels.playerDetails.passCount, touches: cellModels.playerDetails.touches, foulsMade: cellModels.playerDetails.foulsMade, assists: cellModels.playerDetails.assists, goals: cellModels.playerDetails.goals, yellowCard: cellModels.playerDetails.yellowCard, redCard: cellModels.playerDetails.redCard)
//            print("selectedPlayerYellowCard ====> \(selectedPlayerYellowCard)")
//            print("selectedPlayerNameAddPlayer : \(selectedPlayerNameAddPlayer)")
        }
       else if isNotSelectedPlayer == false {
            showAlert()
        }
        self.navigationController?.popViewController(animated: true)
    }
}

// MARK: - Collection

extension AddPlayerSearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searchArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellSearchPlayers = searchArray[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellSearchPlayers.identifier, for: indexPath) as! AddPlayerCollectionViewCell
        cell.cellModel = cellSearchPlayers
        
        nameInAddPlayerVc = cell.playersNameInAddPlayer.text ?? ""
        
        for model in searchArray {
            socreInAddPlayerVc = model.playerDetails.scoreInAddPlayer
//            name = model.name ?? ""
        }
        
        if cellSearchPlayers.isSelected == true {
            cell.viewSelectedPlayer.backgroundColor = .orange
            cell.imageSelectedplayer.image = UIImage(named: "correct")
            cellModels = cellSearchPlayers
            buttonCompare.addTarget(self, action: #selector(buttonActionCompareNavigation(_:)), for: .touchUpInside)
            print("name : \(cellSearchPlayers.playerDetails.nameInAddPlayer)")
           
            isSelectedPlayer = true
        }
        
         if cellSearchPlayers.isSelected == false {
            cell.imageSelectedplayer.image = UIImage(named: "plus")
            cell.viewSelectedPlayer.backgroundColor = .gray
            isNotSelectedPlayer = false
            buttonCompare.addTarget(self, action: #selector(buttonActionCompareNavigation(_:)), for: .touchUpInside)
            
//            buttonCompare.addTarget(self, action: #selector(buttonActionCompare(_:)), for: .touchUpInside)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 210, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cellSearchPlayers = searchArray[indexPath.row]
        for model in searchArray {
            model.isSelected = false
        }
        cellSearchPlayers.isSelected = true
        
        collectionView.reloadData()
    }
}
