//
//  GoogleImageDetailViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class GoogleImageDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageUrl = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageURL = URL (string: imageUrl){

            imageView.af_setImage(withURL: imageURL)
            
        } else {
            imageView.image = UIImage(named:"Placeholder1")
        }


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


//    func setupImage(item:Item?) {
//        if
//            let imageUrlString = item?.contextLink,
//            let imageUrl = URL(string:imageUrlString){
//            imageView.af_setImage(withURL:imageUrl)
//        }
//        
//}
}
   
    
    
    
    
    
    
    
   

