//
//  ViewController.swift
//  ClockWidgetSample
//
//  Created by Ravindra Kishan on 16/01/15.
//  Copyright (c) 2015 Ravindra Kishan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var clockImage: UIImageView!
    
    @IBOutlet var mysLabel: UILabel!
    @IBOutlet var dubLabel: UILabel!
    @IBOutlet var denLabel: UILabel!
    @IBOutlet var sanLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.97, alpha: 1)
        headingLabel.textColor = UIColor (red: 0.92, green: 0.41, blue: 0.42, alpha: 1)
        
        let image:UIImage = UIImage (named:"flat-clockf.gif")!
        var data:NSData = AnimatedGIFImageSerialization.animatedGIFDataWithImage(image, duration:0, loopCount:0, error: nil)
        clockImage.image = UIImage(data:data)
        
        setTheTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setTheTime()
    {
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
        dubLabel.text = dateFormatter.stringFromDate(presTime)
        
        CountryZone = NSTimeZone(name:"US/Mountain")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        denLabel.text = dateFormatter.stringFromDate(presTime)
        
        CountryZone = NSTimeZone(name:"CST")
        dateFormatter.timeZone = CountryZone
        dateFormatter.dateFormat = "HH:mm"
        sanLabel.text = dateFormatter.stringFromDate(presTime)
    }


}

