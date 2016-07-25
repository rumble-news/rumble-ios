//
//  AppDelegate.swift
//  rumble
//
//  Created by Jacqueline Sloves on 7/24/16.
//  Copyright © 2016 Jacqueline Sloves. All rights reserved.
//

import UIKit
import Stormpath

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let APIURL = "https://rumble-api-sandbox.herokuapp.com"
        Stormpath.sharedSession.configuration.APIURL = NSURL(string: APIURL)!
        return true
    }

}

