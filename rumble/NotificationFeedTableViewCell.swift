//
//  NotificationFeedTableViewCell.swift
//  rumble
//
//  Created by Jacqueline Sloves on 8/23/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit

class NotificationFeedTableViewCell : UITableViewCell {


    @IBOutlet weak var notificationIcon: UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
