//
//  Ext+UserDefaults.swift
//  ceawimc
//
//  Created by MacSivsa on 01/10/2019.
//  Copyright © 2019 PSA. All rights reserved.
//


import Foundation
import SwiftyUserDefaults


public extension DefaultsKeys{
    var dzuser: DefaultsKey<Data?> { return .init("dzuser") }
    var contactsProcessed:DefaultsKey<Int?> { return .init("contactsProcessed") }
}


public extension UserDefaults {

    static func isFirstLaunch() -> Bool {
        
        let hasBeenLaunchedBeforeFlag = "hasBeenLaunchedBeforeFlag"
        
        let isFirstLaunch: Bool = !UserDefaults.standard.bool(forKey: hasBeenLaunchedBeforeFlag)
        
        if (isFirstLaunch){
            UserDefaults.standard.set(true, forKey: hasBeenLaunchedBeforeFlag)
            UserDefaults.standard.synchronize()
        }
        return isFirstLaunch
    }
    
    static func isNewVersion07() -> Bool {
        
        let hasBeenLaunchedBefore207 = "hasBeenLaunchedBefore207"
        
        let isFirstLaunch: Bool = !UserDefaults.standard.bool(forKey: hasBeenLaunchedBefore207)
        
        if (isFirstLaunch){
            UserDefaults.standard.set(true, forKey: hasBeenLaunchedBefore207)
            UserDefaults.standard.synchronize()
        }
        return isFirstLaunch
    }
    
    
    
    static func isNeedMigation() -> Bool {
        
        let hasBeenMigrateBeforeFlag = "hasBeenMigrateBeforeFlag"
        
        let isNeedMigation: Bool = !UserDefaults.standard.bool(forKey: hasBeenMigrateBeforeFlag)
        
        if (isNeedMigation){
            UserDefaults.standard.set(true, forKey: hasBeenMigrateBeforeFlag)
            UserDefaults.standard.synchronize()
        }
        return isNeedMigation
    }
    
    
    static func isNeedMigationAcc() -> Bool {
        
        let hasBeenMigrateBeforeFlag = "hasBeenMigrateBeforeFlagAcc"
        
        let isNeedMigation: Bool = !UserDefaults.standard.bool(forKey: hasBeenMigrateBeforeFlag)
        
        if (isNeedMigation){
            UserDefaults.standard.set(true, forKey: hasBeenMigrateBeforeFlag)
            UserDefaults.standard.synchronize()
        }
        return isNeedMigation
    }
    
    
    static func setAutomatization() -> Bool {
        let hasBeenSetAuto = "hasBeenSetAuto"
        
        let isNeedSave: Bool = UserDefaults.standard.bool(forKey: hasBeenSetAuto)
        
        if (isNeedSave){
            UserDefaults.standard.set(false, forKey: hasBeenSetAuto)
            UserDefaults.standard.synchronize()
        }
        
        return isNeedSave
    }

    
}
