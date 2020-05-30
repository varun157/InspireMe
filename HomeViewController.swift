//
//  HomeViewController.swift
//  InspireMe
//
//  Created by Varun Sachdev on 15/09/17.
//  Copyright © 2017 Varun Sachdev. All rights reserved.
//

import UIKit
import UserNotifications

class HomeViewController: UIViewController {

    @IBAction func quotes(_ sender: Any) {
        
    let content = UNMutableNotificationContent()
        content.title = "Quotes to brighten your day"
        content.body = "Start your day on a positive note. Come and check out some inspirational quotes."
        content.sound = UNNotificationSound.default()
        content.badge = 1
        var date = DateComponents()
        date.hour = 9 // 9 am
        date.minute = 00
        date.timeZone = NSTimeZone.system
        
        
    let trigger = UNCalendarNotificationTrigger(dateMatching: date, repeats: true)
    let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        
    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {didAllow, error in})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    

}
