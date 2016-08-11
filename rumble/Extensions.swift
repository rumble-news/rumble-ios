
import UIKit

// MARK: UIViewController Extensions
extension UIViewController {

    public func setupRumbleHeader() {
        let nav = self.navigationController?.navigationBar
        
        nav?.barStyle = UIBarStyle.Black
        nav?.tintColor = UIColor.whiteColor()
        nav?.barTintColor = Constants.RumbleGreenColor
        nav?.backgroundColor = Constants.RumbleGreenColor
        
        let headerImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 80, height: 35))
        headerImageView.contentMode = .ScaleAspectFit
        
        let headerTextImage = UIImage(named: "rumble-header-text")
        headerImageView.image = headerTextImage
        
        navigationItem.titleView = headerImageView
    }
}


// MARK: UIColor Extensions
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
