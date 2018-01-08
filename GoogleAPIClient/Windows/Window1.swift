//
//  Window1.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import WebKit


class Window1 : UIViewController {

    @IBOutlet weak var webView: WKWebView!
   
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
       
        let url = URL(string: "https://www.google.com")
        let urlWeb = URLRequest(url: url!)
        
        webView.load(urlWeb)
        
        self.webView.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }

    @IBAction func backButton(_ sender: Any) {
        
        webView.goBack()
        
        
    }
  
    @IBAction func previewButton(_ sender: Any) {
       
        webView.goForward()
        
    }
    
    
    
}
