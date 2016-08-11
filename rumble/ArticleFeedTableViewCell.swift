//
//  ArticleFeedTableViewCell.swift
//  rumble
//
//  Created by Jacqueline Sloves on 8/4/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit

class ArticleFeedTableViewCell : UITableViewCell {

    
    
    @IBOutlet weak var profileImageRounded: UIImageView!
    @IBOutlet weak var rumblerCountLabel: UILabel!
    
    @IBOutlet weak var articleImage: UIImageView!
    @IBOutlet weak var articleTitle: UILabel!
    @IBOutlet weak var articleExcerpt: UILabel!
    @IBOutlet weak var articleSource: UILabel!
    
    @IBOutlet weak var downloadIcon: UIButton!
    @IBOutlet weak var rumbleIcon: UIButton!
    @IBOutlet weak var messageIcon: UIButton!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}
