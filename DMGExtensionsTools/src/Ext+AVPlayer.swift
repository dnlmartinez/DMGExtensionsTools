//
//  Ext+AVPlayer.swift
//  WiMC
//
//  Created by MacSivsa on 04/02/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation
import AVFoundation

public extension AVPlayer {
    
    var isPlaying: Bool{
        if (self.rate != 0 && self.error == nil){
            return true
        }else{
            return false
        }
    }
    
}
