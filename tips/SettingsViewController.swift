//
//  SettingsViewController.swift
//  tips
//
//  Created by Ding, Quan on 1/6/15.
//  Copyright (c) 2015 Stubhub. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipPercentageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultTipPercentage = defaults.integerForKey("defaultTipPercentage")
        
        println("default tip percentage is \(defaultTipPercentage)")
        
        defaultTipPercentageField.text = String(defaultTipPercentage)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "save" {
            var defaultTipPercentage = defaultTipPercentageField.text.toInt()
            
            if (defaultTipPercentage != nil){
                var defaults = NSUserDefaults.standardUserDefaults()
                defaults.setInteger(defaultTipPercentage!, forKey: "defaultTipPercentage")
                defaults.synchronize()
            }
        }
    }


}
