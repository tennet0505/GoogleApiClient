//
//  Window2.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Window2 : UIViewController {
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}
