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
                      "cx" :"009539564186860760717:unfxmsbnqzc",
                      "key":"AIzaSyAlpwFUv_5Xa1gfT8Tn4YjR6yKBXoUpuGQ"] as [String : Any]
                      
                      //"key":"AIzaSyAkmpHsyhnXp_ukaEQXtVY-a0aqAuq2cGE"] as [String : Any
        
//        var result = [Item]()
//        for i in 0...20{
//            let item = Item(title:"title \(i) page",
//                link:"https://www.gravatar.com/avatar/9d38e5ac1f2728f2f4bc5ff1f389e708?s=32&d=identicon&r=PG&f=1")
//            result.append(item)
//        }
//        successHandler(result)
//        return Void()
        
        
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



