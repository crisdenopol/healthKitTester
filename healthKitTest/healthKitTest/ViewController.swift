//
//  ViewController.swift
//  healthKitTest
//
//  Created by Cris Rene Denopol on 8/6/18.
//  Copyright © 2018 Cris Rene Denopol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let healthKitManager = HealthKitManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        healthKitManager.authorizeHealthKit2()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

