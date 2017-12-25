//
//  APIManager.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class ImageManager {
    let thumbnailLink : String?
    let contextLink : String?

struct clienKeys {
    static let thumbnailLink = "thumbnailLink"
    static let contextLink = "contextLink"

}
init (clientDictionary: [String: Any])
{
    thumbnailLink = clientDictionary[clienKeys.thumbnailLink] as? String
    contextLink = clientDictionary[clienKeys.contextLink] as? String
    
}
}







//  https://www.googleapis.com/customsearch/v1
// q
// cx   009539564186860760717:0ljwb3egsoe
// key=AIzaSyAkmpHsyhnXp_ukaEQXtVY-a0aqAuq2cGE


/*
 "image": {
"contextLink": string,
"height": integer,
"width": integer,
"byteSize": integer,
"thumbnailLink": string,
"thumbnailHeight": integer,
"thumbnailWidth": integer
*/
/*
<script>
(function() {
    var cx = '009539564186860760717:0ljwb3egsoe';
    var gcse = document.createElement('script');
    gcse.type = 'text/javascript';
    gcse.async = true;
    gcse.src = 'https://cse.google.com/cse.js?cx=' + cx;
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(gcse, s);
})();
</script>
<gcse:search></gcse:search>
*/









