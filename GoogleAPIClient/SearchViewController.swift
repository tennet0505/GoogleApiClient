//
//  SearchViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 27.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var openButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        openButton.target = self.revealViewController()
        openButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "TableViewSegue" {
            
            let dvc = segue.destination as! GoogleTableViewController
            
            dvc.searhString = searchTextField.text!
            
        }
        if segue.identifier == "CollectionViewSegue" {
            
            let dvc1 = segue.destination as! GoogleCollectionViewController
            
            dvc1.searhString1 = searchTextField.text!
            
        }
        
        
        
    }
    
    
    
    

    

    
    }
        

