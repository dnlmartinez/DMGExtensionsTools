//
//  Ext+URLSession.swift
//  WiMC
//
//  Created by MacSivsa on 17/01/2020.
//  Copyright © 2020 PSA. All rights reserved.
//

import Foundation


public extension URLSession{
    
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }
    
}
