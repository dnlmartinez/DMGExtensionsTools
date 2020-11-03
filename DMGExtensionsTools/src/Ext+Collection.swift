//
//  Ext+Collection.swift
//  ceawimc
//
//  Created by MacSivsa on 04/10/2019.
//  Copyright © 2019 PSA. All rights reserved.
//

import Foundation
import UIKit

public extension RangeReplaceableCollection where Element: Hashable {
    var orderedSet: Self {
        
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
    
    mutating func removeDuplicates() {
        var set = Set<Element>()
        removeAll { !set.insert($0).inserted }
    }
    
}
