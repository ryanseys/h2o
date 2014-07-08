//
//  ViewController.swift
//  h2o
//
//  Created by Ryan Seys on 2014-07-03.
//  Copyright (c) 2014 Ryan Seys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var plusButton: UIButton
    @IBOutlet var water: UIView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var glasses = 0
    
    @IBAction func addSomeWater(sender: AnyObject) {
        if(glasses < 8) {
            plusButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            
            glasses++
        
            var waterHeight = (water.window.frame.height / 8) * CGFloat(glasses)
            
            water.frame = CGRectMake(0, (water.window.frame.height / 2) - (waterHeight/2), water.frame.size.width, waterHeight);
        }
        else {
            var alert = UIAlertController(title: "You're hydrated", message: "Go enjoy the day!", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
}

