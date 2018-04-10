//
//  OmdbClient.swift
//  Movie App
//
//  Created by Adrian Brown on 4/9/18.
//  Copyright © 2018 Adrian Brown. All rights reserved.
//

import Foundation
import Alamofire

struct OmdbClient {
    
    static func getMovies( completionHandler: @escaping ([String: Any]?, Error?) -> ()) {
        let movieUrl = Constants.baseURL + Constants.slug + Constants.apiKey
        print("Hello!!!", movieUrl)
        Alamofire.request(movieUrl).responseJSON { response in
            switch response.result {
            case.success(let value):
                completionHandler(value as? NSDictionary as! [String : Any]?, nil)
            case .failure(let error):
                completionHandler(nil, error)
            }
        }
    }
    
//    static func getNextPassTime(lattitude: Double, longitude: Double,pin: Pin, completionHandler: @escaping([String: Any]?, Error?) -> ()) {
//
//        let passTimeURL = "\(Constants.baseURL)\(Constants.passTimeURL)lat=\(lattitude)&lon=\(longitude)"
//        let queue = DispatchQueue(label: "BackgroundQueue", qos: .background, attributes: .concurrent)
//        Alamofire.request(passTimeURL).responseJSON(queue: queue) { response in
//            switch response.result {
//            case.success(let value):
//                completionHandler(value as? NSDictionary as! [String : Any]?, nil)
//            case .failure(let error):
//                completionHandler(nil, error)
//            }
//        }
//    }
}
