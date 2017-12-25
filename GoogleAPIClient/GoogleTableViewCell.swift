//
//  GoogleTableViewCell.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class GoogleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var imageLabel: UILabel!
    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
