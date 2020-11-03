//
//  Ext_CGFloat.swift
//  WiMC
//
//  Created by MacSivsa on 19/12/2018.
//  Copyright © 2018 PSA. All rights reserved.
//

import Foundation
import UIKit

public extension CGFloat {
    
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
    
}
