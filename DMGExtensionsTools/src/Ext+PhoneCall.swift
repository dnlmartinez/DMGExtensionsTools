//
//  Ext+PhoneCall.swift
//  WiMC
//
//  Created by MacSivsa on 22/01/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation
import UIKit


public protocol PhoneCalling {
    func call(phoneNumber: String)
}


public extension PhoneCalling{
    
    func call(phoneNumber: String){
        let cleanNumber = phoneNumber.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")
        guard let number = URL(string: "telprompt://" + cleanNumber) else { return }
        
        UIApplication.shared.open(number, options: [:], completionHandler: nil)
    }
    
    
}
