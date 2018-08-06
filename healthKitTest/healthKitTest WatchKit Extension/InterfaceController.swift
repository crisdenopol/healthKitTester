//
//  InterfaceController.swift
//  healthKitTest WatchKit Extension
//
//  Created by Cris Rene Denopol on 8/6/18.
//  Copyright © 2018 Cris Rene Denopol. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    let healthKitManager = HealthKitManager.sharedInstance
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        healthKitManager.authorizeHealthKit2()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
