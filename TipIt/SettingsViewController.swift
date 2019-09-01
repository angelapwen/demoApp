//
//  SettingsViewController.swift
//  TipIt
//
//  Created by Angela Wen on 8/30/19.
//  Copyright © 2019 Angela Wen. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsTipControl: UISegmentedControl!
    
    @IBAction func selectDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard;
        
        let tipPercentages = [0.15, 0.18, 0.2]
        
        defaults.set(tipPercentages[settingsTipControl.selectedSegmentIndex], forKey: "defaultTip")
        
        defaults.synchronize()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
