//
//  Ext+UIView.swift
//  ceawimc
//
//  Created by MacSivsa on 20/09/2019.
//  Copyright © 2019 PSA. All rights reserved.
//

import Foundation
import UIKit


public extension UIView {    
    
    func getURLCarRenderFrom(vin: String)-> String?{
        let fileName = vin + ".png"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        
        if FileManager.default.fileExists(atPath: fileURL.path){
            return fileURL.path
        }
        return nil
    }
    
    
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    
    func addCornerRadiusWithShadow(color: UIColor, borderColor: UIColor, cornerRadius: CGFloat) {
           self.layer.shadowColor = color.cgColor
           self.layer.shadowOffset = CGSize(width: 0, height: 3)
           self.layer.shadowOpacity = 1.0
           self.layer.shadowRadius = 6.0
           self.layer.cornerRadius = cornerRadius
           self.layer.borderColor = borderColor.cgColor
           self.layer.borderWidth = 1.0
           self.layer.masksToBounds = false
    }
    
    
    func setCornerRadiusWith(radius: Float, borderWidth: Float, borderColor: UIColor) {
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.borderWidth = CGFloat(borderWidth)
        self.layer.borderColor = borderColor.cgColor
        self.layer.masksToBounds = true
    }
    
    
    func addBlurToView(alpha: CGFloat){
        let blurEffect: UIBlurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.alpha = alpha
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
    
    
    func removeBlurToView(){
        for subview in self.subviews{
            if subview is UIVisualEffectView{
                subview.removeFromSuperview()
            }
        }
    }
    
    
    class var nib: UINib? {
      return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    
    class var viewFromNib: UIView? {
      let views = Bundle.main.loadNibNamed(String(describing: self), owner: self, options: nil)
      let view = views![0] as! UIView
      return view
    }
    
    
}
