//
//  HealthKitManager.swift
//  healthKitTest WatchKit Extension
//
//  Created by Cris Rene Denopol on 8/6/18.
//  Copyright © 2018 Cris Rene Denopol. All rights reserved.
//

import Foundation
import HealthKit

class HealthKitManager: NSObject{
    static let sharedInstance = HealthKitManager()
    
    private override init(){}
    
    let healthStore = HKHealthStore()
    
    func authorizeHealthKit(_ completion: @escaping ((_ success: Bool, _ error: Error?) -> Void)){
        if HKHealthStore.isHealthDataAvailable() { //check if healthKit is available
            guard let heartRateType: HKQuantityType = HKQuantityType.quantityType(forIdentifier: .heartRate) else{
                return
            }
            
            let typesToShare = Set([HKObjectType.workoutType(), heartRateType])
            let typesToRead = Set([HKObjectType.workoutType(), heartRateType])
            healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead) { (success, error) in
                if success{
                    print("Authorization successful? \(success)")
                }else{
                    print ("Error: \(error ?? "" as! Error)")
                }
            }
        }else{
            print("HealthKit is not available on this device.")
        }
    }
    
    func authorizeHealthKit2(){
        if HKHealthStore.isHealthDataAvailable() { //check if healthKit is available
            guard let heartRateType: HKQuantityType = HKQuantityType.quantityType(forIdentifier: .heartRate) else{
                return
            }
            
            let typesToShare = Set([HKObjectType.workoutType(), heartRateType])
            let typesToRead = Set([HKObjectType.workoutType(), heartRateType])
            healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead) { (success, error) in
                if success{
                    print("Authorization successful? \(success)")
                }else{
                    print ("Error: \(error ?? "" as! Error)")
                }
            }
        }else{
            print("HealthKit is not available on this device.")
        }
    }
}
