//
//  ArticleFeedViewController.swift
//  rumble
//
//  Created by Jacqueline Sloves on 7/24/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit

class ArticleFeedViewController: UITableViewController {

    var articles = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // TODO: HTTP Request
        self.setupRumbleHeader()        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: return infinite
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("ArticleFeedTableViewCell", forIndexPath:indexPath) as! ArticleFeedTableViewCell
        print("CELL: \(cell)")
        print("\(cell.profileImageRounded.image)")

        cell.profileImageRounded.image = UIImage(named:"Logo-R")
        cell.rumblerCountLabel.text = "You + 16 others"
        cell.articleImage.image = UIImage(named:"demo-article-image")
        cell.articleTitle.text = "How Political Candidates Know If You're Neurotic"
        cell.articleExcerpt.text = "The latest data-driven campagin pitches target you based on your personality, not just your demographics. But does such polling work?"
        cell.articleSource.text = "TECHNOLOGYREVIEW.COM"
        cell.downloadIcon.imageView?.image = UIImage(named:"Logo-R")
        cell.rumbleIcon.imageView?.image = UIImage(named:"Logo-R")
        cell.messageIcon.imageView?.image = UIImage(named:"Logo-R")
        
        
        return cell
    }
    
    
}

