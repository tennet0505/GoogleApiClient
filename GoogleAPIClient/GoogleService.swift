//
//  GoogleService.swift
//  GoogleAPIClient
//
//  Created by Admin on 22.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import Alamofire

class GooleService{
    
    let params = ["q":"cats",
                  "cx":"009539564186860760717:0ljwb3egsoe",
                  "key":"AIzaSyAkmpHsyhnXp_ukaEQXtVY-a0aqAuq2cGE"]

 //   let baseURL = URL (string: "https://www.googleapis.com/customsearch/v1")
    
    func getImage () -> Void  {
    
                Alamofire.request("https://www.googleapis.com/customsearch/v1", parameters: params)
                    .validate()
                    .responseJSON (completionHandler: { (response) -> Void in
                        
                        let jsonDictionary = response.result.value as? [String: Any]
                        print(jsonDictionary)
                        print(response)
              
                        
                        
                        
                        
//                        guard response.result.isSuccess else {
//                            print("Error: \(String(describing: response.result.error))")
//               //             completion(nil)
//                            return
//                        }
//
//                        guard let value = response.result.value as? [String: Any],
//                            let rows = value["rows"] as? [[String: Any]] else {
//                                print(response)
//      //                          completion(nil)
//                                return
                        })
    
    }
    
    }
    


