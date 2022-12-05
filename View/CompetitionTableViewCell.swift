//
//  CompetitionTableViewCell.swift
//  CompetitionProject
//
//  Created by Bimal@AppStation on 13/09/22.
//

import UIKit

class CompetitionTableViewCell: UITableViewCell {
    
    // MARK: - Outlet
    
    @IBOutlet weak var labelTitleCompetition: UILabel!
    @IBOutlet weak var triangleView: UIView!
    @IBOutlet weak var rectangleView: UIView!
    @IBOutlet weak var outerTriangleView: UIView!
    @IBOutlet weak var setImageView: UIImageView!
    @IBOutlet weak var ImageInView: UIView!
    
    // MARK: - variable
    
    var path: UIBezierPath!
//    var setImageView =  UIImageView(image: #imageLiteral(resourceName: "images"))
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setTriangle()
        DispatchQueue.main.async {
            self.setCroppingTriangle()
            self.setRectangle()
            self.setOuterTriangle()
        }
//        ImageInView.addSubview(setImageView)
//        triangleView.addSubview(setImageView)
        
        // Initialization code
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - function
    
    func setModel(setCompetitionModel: Competition) {
       
        self.labelTitleCompetition.text = setCompetitionModel.title
    }
    
//    func setTriangle() {
//        let Width = triangleView.frame.size.width
//        let height = triangleView.frame.size.height
////        let heightWidth = triangleView.frame.size.width
//        let path = UIBezierPath()
//
////            path.move(to: CGPoint(x: heightWidth/2 * 1.7, y: 0))
////            path.addLine(to: CGPoint(x:20, y: heightWidth))
////            path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
////            path.addLine(to: CGPoint(x:heightWidth, y:0))
//
//        path.move(to: CGPoint(x: Width/2 * 1.3, y: 0))
//        path.addLine(to: CGPoint(x: 0 , y: height))
//        path.addLine(to: CGPoint(x:Width, y:height))
//        path.addLine(to: CGPoint(x:Width, y:0))
//
//           let shape = CAShapeLayer()
//
//        shape.path = path.cgPath
//        shape.fillColor = UIColor.systemPink.cgColor
////        shape.lineWidth = 1
////        shape.strokeColor = UIColor.gray.cgColor
//        triangleView.layer.insertSublayer(shape, at: 0)
//
//    }
    
    func setTriangle() {
    
        let Width = triangleView.frame.size.width
        let height = triangleView.frame.size.height
//        let heightWidth = triangleView.frame.size.width
        let path = UIBezierPath()
        
//            path.move(to: CGPoint(x: heightWidth/2 * 1.7, y: 0))
//            path.addLine(to: CGPoint(x:20, y: heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:0))
        
        path.move(to: CGPoint(x: Width/2 * 1.3, y: 0))
        path.addLine(to: CGPoint(x: 0 , y: height))
        path.addLine(to: CGPoint(x:Width, y:height))
        path.addLine(to: CGPoint(x:Width, y:0))
        
           let shape = CAShapeLayer()
        
        shape.path = path.cgPath
        shape.fillColor = UIColor.systemPink.cgColor
//        shape.lineWidth = 1
//        shape.strokeColor = UIColor.gray.cgColor
        triangleView.layer.insertSublayer(shape, at: 0)
//        setImageView = setImageView.getCut(with: path)
    }
    
    func setCroppingTriangle() {
    
        let Width = triangleView.frame.size.width
        let height = triangleView.frame.size.height
//        let heightWidth = triangleView.frame.size.width
        let path = UIBezierPath()
        
//            path.move(to: CGPoint(x: heightWidth/2 * 1.7, y: 0))
//            path.addLine(to: CGPoint(x:20, y: heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:0))
        
        path.move(to: CGPoint(x: Width/2 * 1.3, y: 0))
        path.addLine(to: CGPoint(x: 0 , y: height))
        path.addLine(to: CGPoint(x:Width, y:height))
        path.addLine(to: CGPoint(x:Width, y:0))
        
           let shape = CAShapeLayer()
        
        shape.path = path.cgPath
        shape.fillColor = UIColor.green.cgColor
//        shape.lineWidth = 1
//        shape.strokeColor = UIColor.gray.cgColor
//        setImageView.layer.insertSublayer(shape, at: 1)
//        triangleView.backgroundColor = .yellow
//        setImageView.backgroundColor = .red
//        setImageView.image = nil
        setImageView = setImageView.getCut(with: path, base: setImageView.superview!)
    }
    
    func setRectangle() {
        
        let Width = rectangleView.frame.size.width //you can use triangleView.frame.size.height
        let height = rectangleView.frame.size.height
//        let heightWidth = rectangleView.frame.size.width
        
        let shape = CAShapeLayer()
        
        shape.path = roundedRectangle(Width: Width, height: height)
        shape.fillColor = UIColor.clear.cgColor
        shape.lineWidth = 0.3
//        shape.position = CGPoint(x: 0, y: 0)
        shape.strokeColor = UIColor.gray.cgColor
        rectangleView.layer.insertSublayer(shape, at: 0)
        
        
//           let Width = rectangleView.frame.size.width //you can use triangleView.frame.size.height
//        let height = rectangleView.frame.size.height
//        let heightWidth = rectangleView.frame.size.width
//           let path = CGMutablePath()
//
//        path.move(to: CGPoint(x: 0 * Width , y: 0 * height))
//        path.addLine(to: CGPoint(x: 1 * Width + 40, y: 0 * height))
//        path.addLine(to: CGPoint(x:1 * Width + 5, y: 1 * height))
//        path.addLine(to: CGPoint(x: 0 * Width , y: 1 * height))
//        path.addLine(to: CGPoint(x: 0 * Width , y: 0 * height))
//
//        let shape = CAShapeLayer()
//        shape.path = path
//        shape.fillColor = UIColor.clear.cgColor
//        shape.lineWidth = 0.5
//        shape.strokeColor = UIColor.gray.cgColor
////        shape.path = UIBezierPath(roundedRect: rectangleView.bounds, cornerRadius:10.0).cgPath
//
//        rectangleView.layer.insertSublayer(shape, at: 0)
//        shape.path = UIBezierPath(roundedRect: rectangleView.bounds,
//                                byRoundingCorners: [.topLeft, .bottomLeft],
//                                  cornerRadii: CGSize(width: 15.0, height: 0.0)).cgPath
       }
    
    
    func imageByApplyingMaskingBezierPath(_ path: UIBezierPath, _ pathFrame: CGRect) -> UIImage {

            UIGraphicsBeginImageContext(triangleView.frame.size)
                let context = UIGraphicsGetCurrentContext()!

                context.addPath(path.cgPath)
                context.clip()
                draw(CGRect(x: 0, y: 0, width: triangleView.frame.size.width, height:triangleView.frame.size.height))

                let maskedImage = UIGraphicsGetImageFromCurrentImageContext()!

                UIGraphicsEndImageContext()

                return maskedImage
    }
    
    func setOuterTriangle() {
        let Width = outerTriangleView.frame.size.width
        let height = outerTriangleView.frame.size.height
//        let heightWidth = triangleView.frame.size.width
           let path = CGMutablePath()
        
//            path.move(to: CGPoint(x: heightWidth/2 * 1.7, y: 0))
//            path.addLine(to: CGPoint(x:20, y: heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:heightWidth))
//            path.addLine(to: CGPoint(x:heightWidth, y:0))
        
        path.move(to: CGPoint(x: Width/2 * 1.1, y: 0))
        path.addLine(to: CGPoint(x: 0 , y: height))
        path.addLine(to: CGPoint(x:Width, y:height))
        path.addLine(to: CGPoint(x:Width, y:0))
        
        let shape = CAShapeLayer()
        
        shape.path = path
        shape.fillColor = #colorLiteral(red: 1, green: 0.7709510922, blue: 0.8007238507, alpha: 1)
//        shape.lineWidth = 1
//        shape.strokeColor = UIColor.gray.cgColor
        outerTriangleView.layer.insertSublayer(shape, at: 0)
    }
    
    func roundedRectangle(Width: CGFloat, height: CGFloat) -> CGPath {

       let point1 = CGPoint(x: 1 * Width + 30, y:0 * height)
       let point2 = CGPoint(x: 1 * Width - 10 , y: 1 * height)
       let point3 =  CGPoint(x: 0 * Width, y: 1 * height)
       let point4 =  CGPoint(x: 0 * Width , y: 0 * height)
       let path = CGMutablePath()

       path.move(to: CGPoint(x: 0 * Width + 8, y: 0 * height))
       path.addArc(tangent1End: point1, tangent2End: point2, radius: 0)
       path.addArc(tangent1End: point2, tangent2End: point3, radius: 0)
       path.addArc(tangent1End: point3, tangent2End: point4, radius: 8)
       path.addArc(tangent1End: point4, tangent2End: point1, radius: 8)
//       path.closeSubpath()
       return path
        
    }
    
//    func roundedRectangle(Width: CGFloat, height: CGFloat) -> CGPath {
//
//        let path: UIBezierPath = UIBezierPath()
//        path.move(to: CGPoint(x: 0 * Width , y: 0 * height))
//        path.addLine(to: CGPoint(x: 1 * Width + 40, y:0 * height))
//        path.addArc(withCenter: CGPoint(x: 1 * Width, y: 0), radius: 20, startAngle: CGFloat(Double.pi/2 * 3), endAngle: CGFloat(Double.pi/2 * 3), clockwise: false)
//        path.addLine(to: CGPoint(x: 1 * Width , y: 1 * height))
////        path.addArc(withCenter: CGPoint(x: 1 * Width, y: 1 * height), radius: 10, startAngle: CGFloat(Double.pi/2 * 3), endAngle: CGFloat(Double.pi/2), clockwise: true)
////        path.addLine(to: CGPoint(x: 0 * Width, y: 1 * height))
////        path.addArc(withCenter: CGPoint(x:  0 * Width, y: 1 * height), radius: 10, startAngle: CGFloat(Double.pi/2 * 3), endAngle: CGFloat(Double.pi/2), clockwise: true)
////        path.addLine(to: CGPoint(x: 0 * Width , y: 0 * height))
////        path.addArc(withCenter: CGPoint(x: 0 * Width, y:  0 * height), radius: 10, startAngle: CGFloat(Double.pi/2 * 3), endAngle: CGFloat(Double.pi/2), clockwise: true)
////        path.close()
//        return path.cgPath
//    }
    
}


extension UIImageView {
    func getCut(with bezier: UIBezierPath, base:UIView) -> UIImageView {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = bezier.cgPath
        base.layer.mask = shapeLayer
        return self
    }
}
