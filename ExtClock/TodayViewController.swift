//
//  TodayViewController.swift
//  ExtClock
//
//  Created by Ravindra Kishan on 16/01/15.
//  Copyright (c) 2015 Ravindra Kishan. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet var mysLabel: UILabel!
    @IBOutlet var dubiLAbel: UILabel!
    @IBOutlet var denLabel: UILabel!
    @IBOutlet var sanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view from its nib.
        view.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.97, alpha: 1)
        self.preferredContentSize = CGSizeMake(320, 200);
        
        var presTime: NSDate = NSDate()
        var CountryZone = NSTimeZone(name:"UTC")
        
        let dateFormatter:NSDateFormatter = NSDateFormatter();
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        
        CountryZone = NSTimeZone(name:"IST")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        mysLabel.text = dateFormatter.stringFromDate(presTime)
        
        CountryZone = NSTimeZone(name:"AST")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        dubiLAbel.text = dateFormatter.stringFromDate(presTime)
        
        CountryZone = NSTimeZone(name:"US/Mountain")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        denLabel.text = dateFormatter.stringFromDate(presTime)
        
        CountryZone = NSTimeZone(name:"CST")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        sanLabel.text = dateFormatter.stringFromDate(presTime)    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdateWithCompletionHandler(completionHandler: ((NCUpdateResult) -> Void)!) {
        // Perform any setup necessary in order to update the view.

        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData

        completionHandler(NCUpdateResult.NewData)
    }

    
}
