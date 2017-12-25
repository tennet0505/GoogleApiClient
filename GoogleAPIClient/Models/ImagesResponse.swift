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
    image:Image?
    
    
    required init?(map: Map) { }
    func mapping(map: Map) {
        title <- map["title"]
        image <- map["image"]
    }
    
    
    
    //getters
    var thumbnailLink:String?{
        return image?.thumbnailLink
    }
}

class Image	: Mappable {
    var thumbnailLink:String?
    required init?(map: Map) { }
    func mapping(map: Map) {
       thumbnailLink <- map["thumbnailLink"]
    }
}

//class SampleResponse: Mappable {
//    var sample:String?


//    required init?(map: Map) { }
//    func mapping(map: Map) {
//       sample <- map["sample"]
//    }
//}

