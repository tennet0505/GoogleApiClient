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
        successHandler :@escaping ([Item]?)->(),
        errorHandler   :@escaping (Error)->()     ) -> Void  {
        
        let params = ["q"  : q,
                      "alt": "json",
                      "searchType": "image",
                      "cx" :"009539564186860760717:0ljwb3egsoe",
                      "key":"AIzaSyAkmpHsyhnXp_ukaEQXtVY-a0aqAuq2cGE"]
        
                Alamofire
                    .request("https://www.googleapis.com/customsearch/v1", parameters: params)
                    .responseObject {
                        (response: DataResponse<ImagesResponse>) in
                        
                        switch response.result {
                            
                        case .success:
                            successHandler(response.value?.items)
                            
                        
                            
                        case .failure(let error):
                            errorHandler(error)
                        }
        }
    }
    
}
    


