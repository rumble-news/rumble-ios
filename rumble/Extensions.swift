
import UIKit

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
