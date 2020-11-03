//
//  Ext+UILabel.swift
//  ceawimc
//
//  Created by MacSivsa on 20/10/2019.
//  Copyright © 2019 PSA. All rights reserved.
//

import Foundation
import UIKit


public extension NSMutableAttributedString {

    func setFontForText(textForAttribute: String, withFont font: UIFont) {
        let range: NSRange = self.mutableString.range(of: textForAttribute, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.font, value: font, range: range)
    }

}
