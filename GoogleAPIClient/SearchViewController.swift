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
        

