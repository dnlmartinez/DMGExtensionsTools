//
//  Ext_UIViewController.swift
//  WiMC
//
//  Created by MacSivsa on 28/5/18.
//  Copyright © 2018 PSA. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation


public struct TimeStrings{
    static let formatedDay = "d"
    static let formatedMonth = "MMM"
    static let formatedDateShort = "yyyy-MM-dd"
    static let formatedDate = "yyyy-MM-dd hh:mm"
    static let formatedDate_Two = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    static let formatedDateLabel = "E, d MMM yyyy HH:mm"
    static let formatedStrigETA = "%02d:%02d:%02d sec."
}


public extension UIViewController{
    
    
    func getImageFromVin(vin: String)-> UIImage?{
        let fileName = vin + ".png"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        
        if FileManager.default.fileExists(atPath: fileURL.path){
            return UIImage.init(contentsOfFile: fileURL.path)
        }
        return nil
    }
    
    
    func getURLCarRenderFrom(vin: String)-> String?{
        let fileName = vin + ".png"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let fileURL = documentsDirectory.appendingPathComponent(fileName)
        
        if FileManager.default.fileExists(atPath: fileURL.path){
            return fileURL.path
        }
        return nil
    }
    
    
    func sendAlertView(title: String ,message: String ,titleBT: String){
        let AlertFeedback = UIAlertController(title: title , message: message , preferredStyle: .alert)
        AlertFeedback.addAction(UIAlertAction(title: titleBT , style: .default, handler: nil))
        self.present(AlertFeedback, animated: true, completion: nil)
    }
    
    
    func createShadow(view:UIView, color:UIColor, Offset:CGSize, opacity:Float, radious:Float){
        view.layer.shadowColor = color.cgColor
        view.layer.shadowOffset = Offset
        view.layer.shadowOpacity = opacity
        view.layer.shadowRadius = CGFloat(radious)
    }
    
   
    func returnStringForTimestampShort(time: Int) -> String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        let dateS = Date.init(timeIntervalSince1970: TimeInterval(time))
        return  dateFormatter.string(from: dateS).lowercased()
    }
    
    
    func returnStringForTimestampLong(time: Int) -> String {
        let dateFormatter : DateFormatter = DateFormatter()
        dateFormatter.locale = Locale.current
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short
        let dateS = Date.init(timeIntervalSince1970: TimeInterval(time))
        return  dateFormatter.string(from: dateS).lowercased()
    }
    
    
    func getFormatedStringFromDate(date:Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = TimeStrings.formatedDateLabel
        return formatter.string(from: date)
    }
    
    
    func getFormatedStringFromSeconds(value:Int) -> String {
        let seconds : Int = value % 60
        let minutes : Int = (value / 60)
        let hours : Int = value / 3600
        return String.localizedStringWithFormat(TimeStrings.formatedStrigETA, hours, minutes, seconds)
    }
    
    
    func convertToDictionary(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    
    func setAttributedString(text: String, words: [String], font: UIFont) -> NSMutableAttributedString{
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: text)
        for word in words{
            attributedString.setFontForText(textForAttribute: word, withFont: font)
        }
        return attributedString
    }
    
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
}
