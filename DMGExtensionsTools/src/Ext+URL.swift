//
//  Ext+URL.swift
//  WiMC
//
//  Created by MacSivsa on 18/05/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation

public extension URL {

    typealias Parameters = [String: Any]

    var parameters: Parameters? {
        get {
            if let components = URLComponents(url: self, resolvingAgainstBaseURL: false), let queryItems = components.queryItems {
                var parameters = Parameters()

                for queryItem in queryItems {
                    parameters[queryItem.name] = queryItem.value
                }

                return parameters
            }
            else {
                return nil
            }
        }
        set {
            if var components = URLComponents(url: self, resolvingAgainstBaseURL: false) {
                components.queryItems = newValue?.map({ URLQueryItem(name: $0.key, value: $0.value as? String) })

                if let newURL = components.url {
                    self = newURL
                }
            }
        }
    }

}
