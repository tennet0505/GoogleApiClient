//
//  GoogleTableViewCell.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import AlamofireImage

class GoogleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    
    
    
    func setup(item:Item?) {
        imageLabel.text = item?.title
        if
            let imageUrlString = item?.thumbnailLink,
            let imageUrl = URL(string:imageUrlString){
            thumbnailImageView.af_setImage(withURL:imageUrl)
        }
    }
    
}
