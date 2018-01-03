//
//  ImagesResponse.swift
//  GoogleAPIClient
//
//  Created by Admin on 25.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import ObjectMapper

class ImagesResponse: Mappable {
    var items:[Item]?
    
    
    required init?(map: Map) { }
    func mapping(map: Map) {
        items <- map["items"]
    }
}


class Item: Mappable {
    var
    title:String?,
    image:Image?,
    link:String?
    
    
    required init?(map: Map) { }
    func mapping(map: Map) {
        title <- map["title"]
        image <- map["image"]
        link <- map["link"]
    }
    
    
    //getters
    var thumbnailLink:String?{
        return image?.thumbnailLink
    }
    
    var contextLink:String?{
        return image?.contextLink
    }

}

class Image	: Mappable {
    var thumbnailLink:String?
    var contextLink:String?
    
    required init?(map: Map) { }

    func mapping(map: Map) {
       thumbnailLink <- map["thumbnailLink"]
         contextLink <- map["thumbnailLink"]
        
    }
}

//class SampleResponse: Mappable {
//    var sample:String?


//    required init?(map: Map) { }
//    func mapping(map: Map) {
//       sample <- map["sample"]
//    }
//}

