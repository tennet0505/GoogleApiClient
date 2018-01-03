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
    
                let dvc : GoogleTableViewController = segue.destination as! GoogleTableViewController

        dvc.searhString = searchTextField.text!
        }
        
        
    }
        

