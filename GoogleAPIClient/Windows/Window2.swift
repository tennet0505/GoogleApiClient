//
//  Window2.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation
import WebKit

class Window2 : UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        
        let url = URL(string: "https://www.ya.ru")
        let urlWeb = URLRequest(url: url!)
        
        webView.load(urlWeb)
        
   //     self.webView.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
  
    @IBAction func previewButton(_ sender: Any) {
        webView.goForward()
        
    }
    @IBAction func backButton(_ sender: Any) {
        webView.goBack()
    }
}
