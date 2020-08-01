//
//  SettingsViewController.swift
//  tippy
//
//  Created by Fabian Jujescu on 8/1/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipToggle: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
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
    
    @IBAction func updateSettings(_ sender: Any) {
        defaults.set(defaultTipToggle.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
    }
    
}
