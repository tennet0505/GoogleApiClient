//
//  Window1.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

class Window1 : UIViewController {
    
    override func viewDidLoad() {
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}
