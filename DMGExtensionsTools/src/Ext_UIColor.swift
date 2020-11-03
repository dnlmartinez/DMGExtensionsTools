//
//  Ext_UIColor.swift
//  WiMC
//
//  Created by MacSivsa on 17/5/18.
//  Copyright © 2018 PSA. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor{
    
    convenience init( hex: String){
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        self.init()
    }
    
    static func transparent() -> UIColor {
        return UIColor(white: 0, alpha: 0)
    }
    
    static func whiteAlpha() -> UIColor {
        return UIColor.white.withAlphaComponent(0.2)
    }
    
    static func whiteAlpha(alpha: CGFloat) -> UIColor {
        return UIColor.white.withAlphaComponent(alpha)
    }
    
    static func getDarkBlueCEAColor() -> UIColor {
        //Dark blue: #3157A7
        return UIColor.init(hex:"#1B365D") //#3157A7
    }
    
    static func getLightBlueCEAColor() -> UIColor {
        //Light blue: #4D6FB7
        return UIColor.init(hex:"#4698cb") //#4D6FB7
    }
    
    static func getLighterBlueCEAColor() -> UIColor {
        // Lighter blue: #7692CF
        return UIColor.init(hex:"#7692CF")
    }
    
    /// FeedBack Connection State
    
    static func getRedCEADisconnectedColor() -> UIColor {
        return UIColor.init(hex:"#FA3535")
    }
    
    static func getOrangeCEAConnectingColor() -> UIColor {
        return UIColor.init(hex:"#FAB735")
    }
    
    static func getGreenCEAConnectedColor() -> UIColor {
        return UIColor.init(hex:"#75E275")
    }
    
    static func getGreenCEAAuthenticatedColor() -> UIColor {
        return UIColor.init(hex:"#2BC82B")
    }
    
    /// Analytics Colors
    
    static func getAnalyticsFMColor() -> UIColor {
        return UIColor.init(hex:"#2C67BE")
    }
    
    static func getAnalyticsAMColor() -> UIColor {
        return UIColor.init(hex:"#5B67BE")
    }
    
    static func getAnalyticsUSBColor() -> UIColor {
        return UIColor.init(hex:"#2C7FBEE")
    }
    
    static func getAnalyticsBTColor() -> UIColor {
        return UIColor.init(hex:"#2C91BE")
    }
    
    static func getAnalyticsCDColor() -> UIColor {
        return UIColor.init(hex:"#2C91DC")
    }
    
    static func getAnalyticsMirrorColor() -> UIColor {
        return UIColor.init(hex:"#66B6DC")
    }
    
    static func getAnalyticsOtherColor() -> UIColor {
        return UIColor.init(hex:"#2CBDBE")
    }
    
    static func RandomColorImg() -> UIColor {
        let randomNum: UInt32 = arc4random_uniform(4) + 1
        
        switch randomNum {
        case 1:
            return UIColor.init(hex: "#f0cb24")
        case 2:
            return UIColor.init(hex: "#fe8100")
        case 3:
            return UIColor.init(hex: "#d60622")
        case 4:
            return UIColor.init(hex: "#3b85aa")
        default:
            return UIColor.init(hex: "#f0cb24")
        }
    }
    
    static func random() -> UIColor {
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  167,
                       alpha: 1.0)
    }
 
    
}


