//
//  Constants.swift
//  rumble
//
//  Created by Jacqueline Sloves on 8/4/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit

struct Constants {

    static let RumbleGreenColor = UIColor(red: 0, green: 206, blue: 112)
    
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}