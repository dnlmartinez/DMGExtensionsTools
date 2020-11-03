//
//  Ext+CoreLocation.swift
//  WiMC
//
//  Created by MacSivsa on 02/10/2019.
//  Copyright © 2019 PSA. All rights reserved.
//


import Foundation
import CoreLocation

public extension CLLocation{
    
    func geocode(completion: @escaping (_ placemark: [CLPlacemark]?, _ error: Error?) -> Void)  {
        CLGeocoder().reverseGeocodeLocation(self, completionHandler: completion)
    }
    
    func fetchCityAndCountry(completion: @escaping (_ city: String?, _ country:  String?, _ error: Error?) -> ()) {
           CLGeocoder().reverseGeocodeLocation(self) { completion($0?.first?.locality, $0?.first?.isoCountryCode, $1) }
    }
    
}
