//
//  Ext+UIApplication.swift
//  ceawimc
//
//  Created by MacSivsa on 19/09/2019.
//  Copyright © 2019 PSA. All rights reserved.
//

import Foundation
import UIKit

public extension UIApplication {
    
    class var statusBarBackgroundColor: UIColor? {
        get{
            return (shared.value(forKey: "statusBar") as? UIView)?.backgroundColor
        }set{
            (shared.value(forKey: "statusBar") as? UIView)?.backgroundColor = newValue
        }
    }    
}
