//
//  Ext+CGSize.swift
//  WiMC
//
//  Created by MacSivsa on 18/05/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation


public extension CGSize {

    @inlinable
    init(square: CGFloat) {
        self.init(width: square, height: square)
    }

}
