//
//  FIFAWorldCupViewController.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 16/09/22.
//

//import UIKit
//
//
//class FIFAWorldCupViewController: UIViewController,DataEnteredDelegate, UITextFieldDelegate {
//
//    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
//    @IBOutlet weak var myTableView: UITableView!
//    @IBOutlet weak var bottomViewOverview: UIView!
//    @IBOutlet weak var bottomViewStats: UIView!
//    @IBOutlet weak var bottomViewCompare: UIView!
//    @IBOutlet weak var labelNameOfPlayerInFWCVc: UILabel!
//    @IBOutlet weak var labelScoreOfPlayerFWCVc: UILabel!
//
//    var overviewArray = [FIFAWorldCup]()
//    var statsArray = [FIFAWorldCup]()
//    var compareArray =  [FIFAWorldCup]()
//    var nameOfPlayerInFWCVC = String()
//    var scoreOfPlayerFWCVC = String()
//    var compareModel: FIFAWorldCupCollection?
//    var getCurrentIndexPath:IndexPath!
//    var selectedPlayerFromAddPlayer = String()
//    var str = "Asdfghj"
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        labelNameOfPlayerInFWCVc.text = nameOfPlayerInFWCVC
//        labelScoreOfPlayerFWCVc.text = scoreOfPlayerFWCVC
//        setModelOverview()
//        setModelStats()
//        mySegmentedControl.removeBorders()
//        mySegmentedControl.selectedSegmentIndex = 0
//        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        let titleTextAttributesSelected = [NSAttributedString.Key.foregroundColor: UIColor.black]
//        mySegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
//        mySegmentedControl.setTitleTextAttributes(titleTextAttributesSelected, for: .selected)
//
//        self.navigationController?.navigationItem.hidesBackButton = true
//        mySegmentedControl.subviews.forEach { subview in
//          subview.backgroundColor = .white
//        }
//        mySegmentedControl.clipsToBounds = true
//        bottomViewOverview.isHidden = true
//        bottomViewStats.isHidden = true
//        bottomViewCompare.isHidden = true
//
//        // Do any additional setup after loading the view.
//    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        self.tabBarController?.tabBar.isHidden = true
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "AddPlayerSearchViewController" {
//            let secondViewController = segue.destination as! AddPlayerSearchViewController
//                secondViewController.delegate = self
//        }
//    }
//
//    func userDidEnterInformation(info: String) {
//        print("info: \(info)")
//        selectedPlayerFromAddPlayer = info
//        print("selectedPlayerFromAddPlayer:====> \(selectedPlayerFromAddPlayer)")
//    }
//
//    func setModelOverview() {
//        let birthdayAge = FIFAWorldCup(strtitle1: "Birthday", strtitle2: "Age", strvalueOfTitle1: "07 May 1999", strvalueOfTitle2: "23", functionality: .OverviewCell)
//        let heightWeight = FIFAWorldCup(strtitle1: "Height", strtitle2: "Weight", strvalueOfTitle1: "186 cm", strvalueOfTitle2: "0 kg", functionality: .OverviewCell)
//        let nationalityPreferredFoot = FIFAWorldCup(strtitle1: "Nationality", strtitle2: "Preferred foot", strvalueOfTitle1: "Netherlands", strvalueOfTitle2: "Right", functionality: .OverviewCell)
//        let shirtnoPosition = FIFAWorldCup(strtitle1: "T-Shirt Number", strtitle2: "Position", strvalueOfTitle1: "11", strvalueOfTitle2: "Left Winger", functionality: .OverviewCell)
//        let imageInOverview = FIFAWorldCup(strtitle1: "", strtitle2: "", strvalueOfTitle1: "", strvalueOfTitle2: "", functionality: .overviewImg)
//        overviewArray = [birthdayAge, heightWeight, nationalityPreferredFoot, shirtnoPosition, imageInOverview]
//    }
//    func setModelStats() {
//        let playingtime = FIFAWorldCup(strtitle1: "Playing time", strtitle2: "Pass count", strvalueOfTitle1: "90 min", strvalueOfTitle2: "36", functionality: .OverviewCell)
//        let touches = FIFAWorldCup(strtitle1: "Touches", strtitle2: "Fouls made", strvalueOfTitle1: "83", strvalueOfTitle2: "0", functionality: .OverviewCell)
//        let assists = FIFAWorldCup(strtitle1: "Assists", strtitle2: "Goals", strvalueOfTitle1: "0", strvalueOfTitle2: "1", functionality: .OverviewCell)
//        let statsYellowCard = FIFAWorldCup(strtitle1: "0", strtitle2: "", strvalueOfTitle1: "Yellow card", strvalueOfTitle2: "", functionality: .statsCard)
//        let statsRedCard = FIFAWorldCup(strtitle1: "0", strtitle2: "", strvalueOfTitle1: "Red card", strvalueOfTitle2: "", functionality: .statsCard)
//        statsArray = [playingtime, touches, assists, statsYellowCard, statsRedCard ]
//    }
//
//
//    @IBAction func buttonActionCloseArrow(sender: UIButton) {
//        print("Button Clicked")
//        self.navigationController?.popViewController(animated: true)
//    }
//    @IBAction func segmentedControlActionChanged(sender: UISegmentedControl) {
//        myTableView.reloadData()
//    }
//
//}
//
//
//extension FIFAWorldCupViewController: UITableViewDelegate, UITableViewDataSource {
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var returnValue = 0
//        let segmentIndex = mySegmentedControl.selectedSegmentIndex
//
//        if segmentIndex == 0 {
//            returnValue = overviewArray.count
//        }
//        else if segmentIndex == 1{
//            returnValue = statsArray.count
//        }
//        else if segmentIndex == 2 {
//            returnValue = 1
//        }
//
//        return returnValue
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let overviewModel = overviewArray[indexPath.row]
//        let myCell = tableView.dequeueReusableCell(withIdentifier: overviewModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
//
//        let segmentIndex = mySegmentedControl.selectedSegmentIndex
//
//        if segmentIndex == 0 {
//            bottomViewOverview.isHidden = false
//            bottomViewStats.isHidden = true
//            bottomViewCompare.isHidden = true
//
//            myCell.setModel(setFIFAModel: overviewModel)
//
//        }
//        else if segmentIndex == 1 {
//            bottomViewStats.isHidden = false
//            bottomViewOverview.isHidden = true
//            bottomViewCompare.isHidden = true
//            let statsModel = statsArray[indexPath.row]
//            let statsCell = tableView.dequeueReusableCell(withIdentifier: statsModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
//            statsCell.setModel(setFIFAModel: statsModel)
//
//            if statsModel.valueOfTitle1 == "Yellow card" {
//                statsCell.outerViewBorder?.layer.borderColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1)
//                statsCell.shape.fillColor = #colorLiteral(red: 1, green: 0.5843137255, blue: 0, alpha: 1)
//            }
//            else  if statsModel.valueOfTitle1 == "Red card" {
//                statsCell.outerViewBorder?.layer.borderColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
//                statsCell.shape.fillColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
//            }
//            return statsCell
//        }
//        else if segmentIndex == 2 {
//            bottomViewCompare.isHidden = false
//            bottomViewOverview.isHidden = true
//            bottomViewStats.isHidden = true
//            let compareCell = tableView.dequeueReusableCell(withIdentifier: "compareTable.cell", for: indexPath) as! FIFAWorldCupTableViewCell
//            compareCell.nameOfPlayerFWCCell = nameOfPlayerInFWCVC
//            compareModel = compareCell.compareModel
//            getCurrentIndexPath = compareCell.currentIndexPathOfCompareCell
//            compareCell.productVC = self
//
//            compareCell.selectedPlayerFAPFWCVc = selectedPlayerFromAddPlayer
//
//            return compareCell
//        }
//
//        return myCell
//    }
////    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////
////        if (segue.identifier == "AddPlayerSearchViewController") {
////            if let userVC = segue.destination as? AddPlayerSearchViewController {
////                userVC.getCompareModel = compareModel
////                userVC.receivecurrentIndexInAddplayer = getCurrentIndexPath
////
////            }
////        }
////    }
//
//}
//
//extension UISegmentedControl {
//    func removeBorders() {
////        setBackgroundImage(imageWithColor(color: backgroundColor ?? .clear), for: .normal, barMetrics: .default)
////        setBackgroundImage(imageWithColor(color: tintColor!), for: .selected, barMetrics: .default)
//        setDividerImage(imageWithColor(color: UIColor.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
//    }
//
//    // create a 1x1 image with this color
//    private func imageWithColor(color: UIColor) -> UIImage {
//        let rect = CGRect(x: 0.0, y: 0.0, width:  1.0, height: 1.0)
//        UIGraphicsBeginImageContext(rect.size)
//        let context = UIGraphicsGetCurrentContext()
//        context!.setFillColor(color.cgColor);
//        context!.fill(rect);
//        let image = UIGraphicsGetImageFromCurrentImageContext();
//        UIGraphicsEndImageContext();
//        return image!
//    }
//}





import UIKit

class FIFAWorldCupViewController: UIViewController, UITextFieldDelegate, DataEnteredDelegate {
    
    // MARK: - Outlet
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var bottomViewOverview: UIView!
    @IBOutlet weak var bottomViewStats: UIView!
    @IBOutlet weak var bottomViewCompare: UIView!
    @IBOutlet weak var labelNameOfPlayerInFWCVc: UILabel!
    @IBOutlet weak var labelScoreOfPlayerFWCVc: UILabel!
    
    // MARK: - variable
    
    var nameModel: FIFAWorldCupModel = FIFAWorldCupModel([:])
    var cellModels: [FIFAWorldCupTableViewModel] = []
    
    var overviewArray = [FIFAWorldCupTableViewModel]()
    var statsArray = [FIFAWorldCupTableViewModel]()
    var compareArray =  [FIFAWorldCupTableViewModel]()
    var nameOfPlayerInFWCVC = String()
    var scoreOfPlayerFWCVC = String()
    var birthdayofPlayerFWCVC = String()
    var ageofPlayerFWCVC = String()
    var heightofPlayerFWCVC = String()
    var weightofPlayerFWCVC = String()
    var nationalityofPlayerFWCVC = String()
    var preferredfootofPlayerFWCVC = String()
    var TshirtNoOfPlayerFWCVC = String()
    var positionofPlayerFWCVC = String()
    var playingTimeofPlayerFWCVC = String()
    var passCountofPlayerFWCVC = String()
    var touchesofPlayerFWCVC = String()
    var foulsMadeofPlayerFWCVC = String()
    var assistsofPlayerFWCVC = String()
    var goalsofPlayerFWCVC = String()
    var yellowCardOfPlayerFWCVC = String()
    var redCardOfPlayerFWCVC = String()
    var selectedPlayerFromAddPlayer = String()
    var selectedPlayerscoreFromAddPlayer = String()
    var selectedPlayerBirthdayFromAddPlayer = String()
    var selectedPlayerAgeFromAddPlayer = String()
    var selectedPlayerHeightFromAddPlayer = String()
    var selectedPlayerWeightFromAddPlayer = String()
    var selectedPlayerNationalityFromAddPlayer = String()
    var selectedPlayerpreferredFootFromAddPlayer = String()
    var selectedPlayerTshirtNoFromAddPlayer = String()
    var selectedPlayerPositionFromAddPlayer = String()
    var selectedPlayerPlayingTimeFromAddPlayer = String()
    var selectedPlayerPassCountFromAddPlayer = String()
    var selectedPlayerTouchesFromAddPlayer = String()
    var selectedPlayerFoulsFromAddPlayer = String()
    var selectedPlayerassistsFromAddPlayer = String()
    var selectedPlayerGoalsFromAddPlayer = String()
    var selectedPlayerYellowCardFromAddPlayer = String()
    var selectedPlayerRedCardFromAddPlayer = String()
    var isSelectedPlayerFromAddPlayer = Bool()
    var isNotSelectedPlayerFromAddPlayer = Bool()
    var setCompareModel: FIFACompareCollectionViewCellModel?
    var selectedPlayingTimeFromAdd = Float()
    var playingTimeFromSearchVc = Float()
//    var firstLabelInProgress = Float()
//    var secondLabelInProgress = Float()
//    var percentage = Int()
    
    // MARK: - Life Cycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNameOfPlayerInFWCVc.text = nameOfPlayerInFWCVC
        labelScoreOfPlayerFWCVc.text = scoreOfPlayerFWCVC
        
        setModelOverview()
        setModelStats()
        setModelCompare()
        mySegmentedControl.removeBorders()
        mySegmentedControl.selectedSegmentIndex = 0
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.gray]
        let titleTextAttributesSelected = [NSAttributedString.Key.foregroundColor: UIColor.black]
        mySegmentedControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
        mySegmentedControl.setTitleTextAttributes(titleTextAttributesSelected, for: .selected)
        
        self.navigationController?.navigationItem.hidesBackButton = true
        mySegmentedControl.subviews.forEach { subview in
          subview.backgroundColor = .white
        }
        mySegmentedControl.clipsToBounds = true
        bottomViewOverview.isHidden = true
        bottomViewStats.isHidden = true
        bottomViewCompare.isHidden = true
       
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPlayerSearchViewController" {
            let secondViewController = segue.destination as! AddPlayerSearchViewController
                secondViewController.delegate = self
        }
    }
    
    // MARK: - Function
//    func showAlert() {
//        print("Alert show")
//        let alertController = UIAlertController(title: "Alert", message: "The player id2 field is required", preferredStyle: UIAlertController.Style.alert)
//        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//        
//        self.present(alertController, animated: true, completion: nil)
//    }
    
    func isNotSelectedPlayer(notSelect: Bool) {
        isNotSelectedPlayerFromAddPlayer = notSelect
        print("isNotSelectedPlayerFromAddPlayer:...... \(isNotSelectedPlayerFromAddPlayer)")
    }
    
    func userDidEnterInformation(info: String) {
            print("info: \(info)")
            selectedPlayerFromAddPlayer = info
            print("selectedPlayerFromAddPlayer:====> \(selectedPlayerFromAddPlayer)")
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
        
    }
    func selectedPlayerScore(score: String) {
        selectedPlayerscoreFromAddPlayer = score
        
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
    }
    
    func isSelectedPlayer(selected: Bool) {
        isSelectedPlayerFromAddPlayer = selected
        print("isSelectedPlayerFromAddPlayer:...... \(isSelectedPlayerFromAddPlayer)")
        
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
    }
    func selectedPlayerdetails(birthday: String, age: String, height: String, weight: String, nationality: String, preferredFoot: String, tShirtNo: String, position: String, playingTime: String, passCount: String, touches: String, foulsMade: String, assists: String, goals: String, yellowCard: String, redCard: String) {
        selectedPlayerBirthdayFromAddPlayer = birthday
        selectedPlayerAgeFromAddPlayer = age
        selectedPlayerHeightFromAddPlayer = height
        selectedPlayerWeightFromAddPlayer = weight
        selectedPlayerNationalityFromAddPlayer = nationality
        selectedPlayerpreferredFootFromAddPlayer = preferredFoot
        selectedPlayerTshirtNoFromAddPlayer = tShirtNo
        selectedPlayerPositionFromAddPlayer = position
        selectedPlayerPlayingTimeFromAddPlayer = playingTime
        selectedPlayerPassCountFromAddPlayer = passCount
        selectedPlayerTouchesFromAddPlayer = touches
        selectedPlayerFoulsFromAddPlayer = foulsMade
        selectedPlayerassistsFromAddPlayer = assists
        selectedPlayerGoalsFromAddPlayer = goals
        selectedPlayerYellowCardFromAddPlayer = yellowCard
        selectedPlayerRedCardFromAddPlayer = redCard
        
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
        
        setModelCompare()
    }
    
    
    func setModelOverview() {
        let birthdayAge = FIFAWorldCupTableViewModel(strtitle1: "Birthday", strvalueOfTitle1: "\(birthdayofPlayerFWCVC)", strtitle2: "Age", strvalueOfTitle2: "\(ageofPlayerFWCVC)", cellType: .OverviewCell)
        
        let heightWeight = FIFAWorldCupTableViewModel(strtitle1: "Height", strvalueOfTitle1: "\(heightofPlayerFWCVC)", strtitle2: "Weight", strvalueOfTitle2: "\(weightofPlayerFWCVC)", cellType: .OverviewCell)
        
        let nationalityPreferredFoot = FIFAWorldCupTableViewModel(strtitle1: "Nationality", strvalueOfTitle1: "\(nationalityofPlayerFWCVC)", strtitle2: "Preferred foot", strvalueOfTitle2: "\(preferredfootofPlayerFWCVC)", cellType: .OverviewCell)
        
        let shirtnoPosition = FIFAWorldCupTableViewModel(strtitle1: "T-Shirt Number", strvalueOfTitle1: "\(TshirtNoOfPlayerFWCVC)", strtitle2: "Position", strvalueOfTitle2: "\(positionofPlayerFWCVC)", cellType: .OverviewCell)
        
        let imageInOverview = FIFAWorldCupTableViewModel(strtitle1: "", strvalueOfTitle1: "", strtitle2: "", strvalueOfTitle2: "", cellType: .overviewImg)
        
        overviewArray = [birthdayAge, heightWeight, nationalityPreferredFoot, shirtnoPosition, imageInOverview]
    }
    
    func setModelStats() {
        let playingtime = FIFAWorldCupTableViewModel(strtitle1: "Playing time", strvalueOfTitle1: "\(playingTimeofPlayerFWCVC)", strtitle2: "Pass count", strvalueOfTitle2: "\(passCountofPlayerFWCVC)", cellType: .OverviewCell)
        let touches = FIFAWorldCupTableViewModel(strtitle1: "Touches", strvalueOfTitle1: "\(touchesofPlayerFWCVC)", strtitle2: "Fouls made", strvalueOfTitle2: "\(foulsMadeofPlayerFWCVC)", cellType: .OverviewCell)
        let assists = FIFAWorldCupTableViewModel(strtitle1: "Assists", strvalueOfTitle1: "\(assistsofPlayerFWCVC)", strtitle2: "Goals", strvalueOfTitle2: "\(goalsofPlayerFWCVC)", cellType: .OverviewCell)
        let statsYellowCard = FIFAWorldCupTableViewModel(strtitle1: "\(yellowCardOfPlayerFWCVC)", strvalueOfTitle1: "Yellow card", strtitle2: "", strvalueOfTitle2: "", cellType: .statsCard)
        let statsRedCard = FIFAWorldCupTableViewModel(strtitle1: "\(redCardOfPlayerFWCVC)", strvalueOfTitle1: "Red card", strtitle2: "", strvalueOfTitle2: "", cellType: .statsCard)
        statsArray = [playingtime, touches, assists, statsYellowCard, statsRedCard ]
    }
    
    func setModelCompare() {
        let compare = FIFAWorldCupTableViewModel(strtitle1: "", strvalueOfTitle1: "", strtitle2: "", strvalueOfTitle2: "", cellType: .compareCell)
        let compareProgressBar1 = FIFAWorldCupTableViewModel(strtitle1: "Playing time", strvalueOfTitle1: "\(selectedPlayerPlayingTimeFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(playingTimeofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar2 = FIFAWorldCupTableViewModel(strtitle1: "Pass count", strvalueOfTitle1: "\(selectedPlayerPassCountFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(passCountofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar3 = FIFAWorldCupTableViewModel(strtitle1: "Touches", strvalueOfTitle1: "\(selectedPlayerTouchesFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(touchesofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar4 = FIFAWorldCupTableViewModel(strtitle1: "Fouls made", strvalueOfTitle1: "\(selectedPlayerFoulsFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(foulsMadeofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar5 = FIFAWorldCupTableViewModel(strtitle1: "Assists", strvalueOfTitle1: "\(selectedPlayerassistsFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(assistsofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar6 = FIFAWorldCupTableViewModel(strtitle1: "Goals", strvalueOfTitle1: "\(selectedPlayerGoalsFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(goalsofPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar7 = FIFAWorldCupTableViewModel(strtitle1: "Yellow card", strvalueOfTitle1: "\(selectedPlayerYellowCardFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(yellowCardOfPlayerFWCVC)", cellType: .comapreProgressCell)
        let compareProgressBar8 = FIFAWorldCupTableViewModel(strtitle1: "Red card", strvalueOfTitle1: "\(selectedPlayerRedCardFromAddPlayer)", strtitle2: "", strvalueOfTitle2: "\(redCardOfPlayerFWCVC)", cellType: .comapreProgressCell)
        compareArray = [compare, compareProgressBar1, compareProgressBar2, compareProgressBar3, compareProgressBar4 , compareProgressBar5, compareProgressBar6, compareProgressBar7, compareProgressBar8 ]
        
    }
    
    // MARK: - IBAction
    
    @IBAction func buttonActionCloseArrow(sender: UIButton) {
        print("Button Clicked")
        self.navigationController?.popViewController(animated: true)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @IBAction func segmentedControlActionChanged(sender: UISegmentedControl) {
        myTableView.reloadData()
    }
    
}

// MARK: - Table

extension FIFAWorldCupViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var returnValue = 0
        let segmentIndex = mySegmentedControl.selectedSegmentIndex
        
        if segmentIndex == 0 {
            returnValue = overviewArray.count
        }
        else if segmentIndex == 1{
            returnValue = statsArray.count
        }
        else if segmentIndex == 2 {
            returnValue = compareArray.count
        }
        
        return returnValue
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let overviewModel = overviewArray[indexPath.row]
//        let myCell = tableView.dequeueReusableCell(withIdentifier: overviewModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
        let compareModel = compareArray[indexPath.row]
        let compareCell = tableView.dequeueReusableCell(withIdentifier: compareModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
        compareCell.cellIndex = indexPath.row
        
        let segmentIndex = mySegmentedControl.selectedSegmentIndex
        
        if segmentIndex == 0 {
            bottomViewOverview.isHidden = false
            bottomViewStats.isHidden = true
            bottomViewCompare.isHidden = true
            let overviewModel = overviewArray[indexPath.row]
            let myCell = tableView.dequeueReusableCell(withIdentifier: overviewModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
            myCell.cellIndex = indexPath.row
            myCell.cellModel = overviewModel
            return myCell
           
        }
        else if segmentIndex == 1 {
            bottomViewStats.isHidden = false
            bottomViewOverview.isHidden = true
            bottomViewCompare.isHidden = true
            let statsModel = statsArray[indexPath.row]
            let statsCell = tableView.dequeueReusableCell(withIdentifier: statsModel.identifier, for: indexPath) as! FIFAWorldCupTableViewCell
            statsCell.cellIndex = indexPath.row
            statsCell.cellModel = statsModel
            
            if statsModel.playerDetails.valueOfTitle1 == "Yellow card" {
                statsCell.outerViewBorder?.layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
                statsCell.shape.fillColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            }
            
            else if statsModel.playerDetails.valueOfTitle1 == "Red card" {
                statsCell.outerViewBorder?.layer.borderColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
                statsCell.shape.fillColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
            }
            return statsCell
        }
        else if segmentIndex == 2 {
            bottomViewCompare.isHidden = false
            bottomViewOverview.isHidden = true
            bottomViewStats.isHidden = true
            
            compareCell.nameOfPlayerFWCCell = nameOfPlayerInFWCVC
            compareCell.scoreOfPlayerFWCCell = scoreOfPlayerFWCVC
            print("scoreOfPlayerFWCVC: ====>\(scoreOfPlayerFWCVC)")
            setCompareModel = compareCell.compareModel
//            getCurrentIndexPath = compareCell.currentIndexPathOfCompareCell
            compareCell.productVC = self
           
            compareCell.selectedPlayerFAPFWCVc = selectedPlayerFromAddPlayer
            print("selectedPlayerFromAddPlayer: \(selectedPlayerFromAddPlayer)")
            compareCell.selectedPlayerscoreFAPFWCVc = selectedPlayerscoreFromAddPlayer
            compareCell.isSelectedPlayerFIFAWVc = isSelectedPlayerFromAddPlayer
            compareCell.progressViewCurrentPlayer?.progress = 0.0
            compareCell.progressViewSelectedPlayer?.progress = 0.0
            compareCell.cellModel = compareModel
           
            if compareModel.cellType == .comapreProgressCell {
                compareCell.isHidden = true
            }
            
            if isSelectedPlayerFromAddPlayer == true {
                compareCell.isHidden = false
            }
        }
        return compareCell
        
    }
}

// MARK: - UISegmentedControl

extension UISegmentedControl {
    func removeBorders() {
//        setBackgroundImage(imageWithColor(color: backgroundColor ?? .clear), for: .normal, barMetrics: .default)
//        setBackgroundImage(imageWithColor(color: tintColor!), for: .selected, barMetrics: .default)
        setDividerImage(imageWithColor(color: UIColor.clear), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }

    // create a 1x1 image with this color
    private func imageWithColor(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0.0, y: 0.0, width:  1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        context!.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!
    }
}

extension String {

    var length : Int {
        return self.count
    }

    func digitsOnly() -> String{
        let stringArray = self.components(separatedBy: NSCharacterSet.decimalDigits.inverted)
        let newString = stringArray.joined(separator: "")
        return newString
    }

}
