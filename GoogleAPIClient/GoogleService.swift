//
//  GoogleService.swift
//  GoogleAPIClient
//
//  Created by Admin on 22.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper


class GooleService{
    
    
    func getImage ( q: String,
                    page:Int,
                    successHandler :@escaping ([Item])->(),
                    errorHandler   :@escaping (Error)->() ) {
        
        let params = ["q"  : q,
                      "alt": "json",
                      "start": page,
                      "searchType": "image",
                      "cx" :"009539564186860760717:1yl-cy-7db8",
                      "key":"AIzaSyAwFVOEsnqHYOVCw9XpDHc8g9VYlgwJWlI"] as [String : Any]
        
        Alamofire
            .request("https://www.googleapis.com/customsearch/v1", parameters: params)
            .responseObject {
                (response: DataResponse<ImagesResponse>) in
                
                switch response.result {
                    
                case .success:
                    successHandler(response.value?.items ?? [])
                    
                    print(String(bytes: response.data!, encoding: .utf8)!)
                    
                case .failure(let error):
                    errorHandler(error)
                }
        }
    }
    
}



