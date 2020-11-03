//
//  Ext+NotificationName.swift
//  ceawimc
//
//  Created by MacSivsa on 21/10/2019.
//  Copyright © 2019 PSA. All rights reserved.
//

import Foundation


public extension Notification.Name {
    static let didUpdateCar = Notification.Name("didUpdateCar")
    static let downloadProgress = NSNotification.Name("downloadProgress")
    static let downloadComplete = NSNotification.Name("downloadComplete")
    
    static let ShowContactList = NSNotification.Name("showListContacs")
    static let ShowInfoDriver = NSNotification.Name("showInfoDriver")
    
    static let sessionMusicStatusChanged = Notification.Name("SessionStatusChanged")
}
