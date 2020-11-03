//
//  Ext+Array.swift
//  WiMC
//
//  Created by MacSivsa on 25/05/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation


public extension Array where Element:Equatable {
    
    
    func removeDuplicateObjects() -> [Element] {
        var result = [Element]()

        for value in self {
            if result.contains(value) == false {
                result.append(value)
            }
        }

        return result
    }
    
}
