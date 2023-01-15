//
//  Network.swift
//  alamofire-test
//
//  Created by danish on 15/01/23.
//

import Foundation
import Alamofire

class NetworkC {
    typealias ResponseHandler = ([[String: Any]]?, Error?) -> Void
    
    func excute(_ url: URL, completetion: @escaping ResponseHandler){
//        let urlReq = URLRequest(url: url)
//        Alamofire.request(urlReq)
        
        Alamofire.request(url, method: HTTPMethod.get).validate().responseJSON { response in
            if let error = response.error{
                completetion(nil, error)
            }
            else if let jsonArray = response.result.value as? [[String: Any]]{
                completetion(jsonArray, nil)
            }
            else if let jsonDic = response.result.value as? [String: Any]{
                completetion([jsonDic], nil)
            }
        }
    }
//
//    func getRequestWithAlamofire(){
//        Alamofire.request("https://yourApiUrl.com/get").responseJSON { response in
//          if let json = response.result.value {
//              print("JSON: \(json)") // serialized json response
//          }
//       }
//    }
}
