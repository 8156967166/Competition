//
//  FIFAWorldCupTableViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 19/09/22.
//

//import UIKit
//
//class FIFAWorldCupTableViewCell: UITableViewCell {
//    @IBOutlet weak var title1: UILabel?
//    @IBOutlet weak var title2: UILabel?
//    @IBOutlet weak var valueOfTitle1: UILabel?
//    @IBOutlet weak var valueOfTitle2: UILabel?
//    @IBOutlet weak var collectionView: UICollectionView?
//    @IBOutlet weak var rectangleView: UIView?
//    @IBOutlet weak var outerViewBorder: UIView?
//
//    var fifaModel: FIFAWorldCup?
//    var compareArray = [FIFAWorldCupCollection]()
//    let shape = CAShapeLayer()
//    var nameOfPlayerFWCCell = String()
//    var productVC: FIFAWorldCupViewController?
//    var compareModel: FIFAWorldCupCollection?
//    var currentIndexPathOfCompareCell:IndexPath!
//    var selectedPlayerFAPFWCVc = String()
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        setModelInCompare()
//        // Initialization code
//        print("selectedPlayerFAPFWCVc: => \(selectedPlayerFAPFWCVc)")
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//
//    func setModel(setFIFAModel: FIFAWorldCup) {
//
//        self.title1?.text = setFIFAModel.title1
//        self.title2?.text = setFIFAModel.title2
//        self.valueOfTitle1?.text = setFIFAModel.valueOfTitle1
//        self.valueOfTitle2?.text = setFIFAModel.valueOfTitle2
//
//        fifaModel = setFIFAModel
//
//        setRectangle()
////        setModelInCompare()
//
//    }
//
//    func setRectangle() {
//
//        let Width = rectangleView?.frame.size.width //you can use triangleView.frame.size.height
//        let height = rectangleView?.frame.size.height
//        shape.path = roundedRectangle(Width: Width ?? 0, height: height ?? 0)
////        shape.lineWidth = 1
////        shape.strokeColor = UIColor.blue.cgColor
//
//        rectangleView?.layer.insertSublayer(shape, at: 0)
//    }
//
//    func roundedRectangle(Width: CGFloat, height: CGFloat) -> CGPath {
//
//
//        let point1 = CGPoint(x: 1 * Width + 20, y: 0 * height + 60)
//        let point2 = CGPoint(x: 0 * Width + 80, y: 1 * height + 20)
//        let point3 = CGPoint(x: 0 * Width + 40 , y: 0 * height + 30 )
//        let point4 = CGPoint(x: 1 * Width - 20, y: 0 * height + 10)
//
//       let path = CGMutablePath()
//
//       path.move(to: CGPoint(x: 0 * Width + 80 , y: 0 * height + 10))
//       path.addArc(tangent1End: point1, tangent2End: point2, radius: 3)
//       path.addArc(tangent1End: point2, tangent2End: point3, radius: 3)
//       path.addArc(tangent1End: point3, tangent2End: point4, radius: 3)
//       path.addArc(tangent1End: point4, tangent2End: point1, radius: 3)
//       path.closeSubpath()
//       return path
//
//    }
//
//    func setModelInCompare() {
//        let player = FIFAWorldCupCollection(strtitle: "\(nameOfPlayerFWCCell)", strscore: "9/10", functionality: .comparePersonCell)
//        let selectedPlayer = FIFAWorldCupCollection(strtitle: "", strscore: "", functionality: .selectedPlayer)
//        let addPlayer = FIFAWorldCupCollection(strtitle: "", strscore: "", functionality: .addPlayerCell)
//
//        compareArray = [player, selectedPlayer, addPlayer]
//    }
//}
//
//extension FIFAWorldCupTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return compareArray.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cellModel = compareArray[indexPath.item]
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.identifier, for: indexPath) as! CompareCollectionViewCell
//        cell.setModel(setFIFAModelCollection: cellModel)
//        cell.labelName?.text = nameOfPlayerFWCCell
//        cell.selectedPlayerName?.text = selectedPlayerFAPFWCVc
//        cell.selectedPlayerScore?.text = "9/10"
////        compareArray.swapAt(1, 2)
//        currentIndexPathOfCompareCell = indexPath
////        if indexPath.item == 1 {
////            let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectedPlayer.cell", for: indexPath)
////            return cells
////        }
//
////        cellModel.nameInCompareCollection = nameOfPlayerFWCCell
//        compareModel = cellModel
//        return cell
//    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        return CGSize(width: 165, height: 180)
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        print("selcted compare Collection cell ")
//
//        if compareModel?.type == .addPlayerCell {
//            print("clicked addplayer cell")
//            productVC?.performSegue(withIdentifier: "AddPlayerSearchViewController", sender: nil)
//        }
//    }
//}






import UIKit

class FIFAWorldCupTableViewCell: UITableViewCell {
   
    // MARK: - Outlet
    @IBOutlet weak var title1: UILabel?
    @IBOutlet weak var title2: UILabel?
    @IBOutlet weak var valueOfTitle1: UILabel?
    @IBOutlet weak var valueOfTitle2: UILabel?
    @IBOutlet weak var collectionView: UICollectionView?
    @IBOutlet weak var rectangleView: UIView?
    @IBOutlet weak var outerViewBorder: UIView?
    @IBOutlet weak var selectedPlayerPlayingTime:UILabel?
    @IBOutlet weak var progressViewCurrentPlayer: UIProgressView?
    @IBOutlet weak var progressViewSelectedPlayer: UIProgressView?
    // MARK: - variable
    var compareArray = [FIFACompareCollectionViewCellModel]()
    
    let shape = CAShapeLayer()
    var nameOfPlayerFWCCell = String()
    var scoreOfPlayerFWCCell = String()
    var productVC: FIFAWorldCupViewController?
    var selectedPlayerFAPFWCVc = String()
    var selectedPlayerscoreFAPFWCVc = String()
    var isSelectedPlayerFIFAWVc = Bool()
    var compareModel: FIFACompareCollectionViewCellModel?
    var currentIndexPathOfCompareCell:IndexPath!
    var cellModels:[FIFACompareCollectionViewCellModel] = []
    var firstLabelInProgress = Float()
    var secondLabelInProgress = Float()
    
    var percentage = Int()
    var cellIndex:Int = -1
    
    var cellModel: FIFAWorldCupTableViewModel! {
        didSet {
            setCellItems()
            setRectangle()
            setModelInCompare()
            
            outerViewBorder?.layer.borderColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            print("selectedPlayerFAPFWCVc:::::= \(selectedPlayerFAPFWCVc)")
            DispatchQueue.main.async {
                self.collectionView?.reloadData()
            }
            
            if let text1 = valueOfTitle2?.text?.digitsOnly() ,
                let value1 = Float(text1) {
                print("currentPlayer ====> \(value1)")
                firstLabelInProgress = value1
            }
            if let text2 = valueOfTitle1?.text?.digitsOnly() , let value2 = Float(text2) {
                print("selectedPlayer ====> \(value2)")
                secondLabelInProgress = value2
            }
            
            setProgress()
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setModelInCompare()
        // Initialization code
    }
    
    // MARK: - functions
    
    func setProgress() {
        
        let labelInProgress = firstLabelInProgress/100
        let labelSelectedPlayerProgress = secondLabelInProgress/100
        
        let sum = labelInProgress + labelSelectedPlayerProgress
        
        print("progressCurrentPlayer =====> \(labelInProgress) || \(cellIndex)")
        print("progressSelectedPlayer =====> \(labelSelectedPlayerProgress)")
        
        progressViewCurrentPlayer?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        if sum != 0 {
            progressViewCurrentPlayer?.progress = labelInProgress/sum
            progressViewSelectedPlayer?.progress = labelSelectedPlayerProgress/sum
        }
    }
    
    func setCellItems() {
        title1?.text = cellModel.gettitle1()
        title2?.text = cellModel.getTitle2()
        valueOfTitle1?.text = cellModel.getvalueOfTitle1()
        valueOfTitle2?.text = cellModel.getvalueOfTitle2()
    }
    
    func setRectangle() {

        let Width = rectangleView?.frame.size.width //you can use triangleView.frame.size.height
        let height = rectangleView?.frame.size.height
        shape.path = roundedRectangle(Width: Width ?? 0, height: height ?? 0)
//        shape.lineWidth = 1
//        shape.strokeColor = UIColor.blue.cgColor
        shape.fillColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
       
        rectangleView?.layer.insertSublayer(shape, at: 0)
    }

    func roundedRectangle(Width: CGFloat, height: CGFloat) -> CGPath {

        let point1 = CGPoint(x: 1 * Width + 20, y: 0 * height + 60)
        let point2 = CGPoint(x: 0 * Width + 80, y: 1 * height + 20)
        let point3 = CGPoint(x: 0 * Width + 40 , y: 0 * height + 30)
        let point4 = CGPoint(x: 1 * Width - 20, y: 0 * height + 10)

       let path = CGMutablePath()

       path.move(to: CGPoint(x: 0 * Width + 80 , y: 0 * height + 10))
       path.addArc(tangent1End: point1, tangent2End: point2, radius: 3)
       path.addArc(tangent1End: point2, tangent2End: point3, radius: 3)
       path.addArc(tangent1End: point3, tangent2End: point4, radius: 3)
       path.addArc(tangent1End: point4, tangent2End: point1, radius: 3)
       path.closeSubpath()
       return path
    }
    
    func setModelInCompare() {
        let player = FIFACompareCollectionViewCellModel(strtitle: "\(nameOfPlayerFWCCell)", strscore: "\(scoreOfPlayerFWCCell)", cellType: .comparePersonCell)
//        let selectedPlayer = FIFACompareCollectionViewCellModel(strtitle: "", strscore: "", cellType: .selectedPlayer)
        let addPlayer = FIFACompareCollectionViewCellModel(strtitle: "", strscore: "", cellType: .addPlayerCell)

        compareArray = [player, addPlayer]
    }
    
}


// MARK: - Collection

extension FIFAWorldCupTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return compareArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellModel = compareArray[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.identifier, for: indexPath) as! CompareCollectionViewCell
        cell.cellModel = cellModel
        cell.labelName?.text = nameOfPlayerFWCCell
        cell.labelscore?.text = scoreOfPlayerFWCCell
        
        if cellModel.cellType == .comparePersonCell {
            cell.isUserInteractionEnabled = false
        }
        
//        cell.isUserInteractionEnabled = false
        if isSelectedPlayerFIFAWVc == true {
            if cellModel.cellType == .addPlayerCell {
                let cellSelectedPerson = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectedPlayer.cell", for: indexPath) as! CompareCollectionViewCell
                cellSelectedPerson.selectedPlayerName?.text = selectedPlayerFAPFWCVc
                cellSelectedPerson.selectedPlayerScore?.text = selectedPlayerscoreFAPFWCVc
                return cellSelectedPerson
            }
        }
        
        
        
//        compareArray.swapAt(1, 2)
        
        
        currentIndexPathOfCompareCell = indexPath
//        if indexPath.item == 1 {
//            let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectedPlayer.cell", for: indexPath)
//            return cells
//        }

//        cellModel.nameInCompareCollection = nameOfPlayerFWCCell
        
        compareModel = cellModel
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 165, height: 180)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("selected compare Collection cell ")
        
        if isSelectedPlayerFIFAWVc == true {
            productVC?.performSegue(withIdentifier: "AddPlayerSearchViewController", sender: nil)
        }
        
        if compareModel?.cellType == .addPlayerCell {
            print("clicked addplayer cell")
            productVC?.performSegue(withIdentifier: "AddPlayerSearchViewController", sender: nil)
        }
        
       
    }
}



