//
//  GoogleCollectionViewCell.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class GoogleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageCollection: UIImageView!

    func setup(item:Item?) {
      
        if
            let imageUrlString = item?.thumbnailLink,
            let imageUrl = URL(string:imageUrlString){
            imageCollection.af_setImage(withURL:imageUrl)
        }
    }

}
