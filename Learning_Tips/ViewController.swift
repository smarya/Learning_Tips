//
//  ViewController.swift
//  Learning_Tips
//
//  Created by DurgaPrasad on 29/10/18.
//  Copyright © 2018 DurgaPrasad. All rights reserved.
//

import UIKit

/**
  **Code to test when app enters *Background*  **
 */


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //1: Registering to UIApplicationWillResignActive notification
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appEnteredBackground), name: NSNotification.Name.UIApplicationWillResignActive, object: nil)
        notificationCenter.addObserver(self, selector: #selector(appEntersForegroundActive), name: NSNotification.Name.UIApplicationDidBecomeActive, object: nil)
              notificationCenter.addObserver(self, selector: #selector(appEntersForeground), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func appEnteredBackground() {
        print("App Entered Background Notification")
    }
    // Mark: - App will be notified when app will enter foreground before it enters
    @objc func appEntersForeground() {
        print("App Will Enter Foreground")
    }
    // Mark:  This comes when ever app enters foreground and even when app first loads
    @objc func appEntersForegroundActive() {
        print("Application Will become Active")
    }
    
}

