//
//  GoogleTableViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class GoogleTableViewController: UITableViewController, UISearchBarDelegate, UISearchControllerDelegate{

 
    
    var searhString = ""
    var itemsOfImage = [Item]()
    let googleService = GooleService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
 
        googleService.getImage(q: searhString,
                               successHandler: { ImagesResponse in
                                self.itemsOfImage = ImagesResponse!
                                
                                        self.tableView.reloadData()

            },
                               errorHandler: { Error in

                                print(Error)
        }
        )

    self.tableView.reloadData()
        
    
    }
 
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
  
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        
        return itemsOfImage.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GoogleTableViewCell
        
        
        
       cell.setup(item: itemsOfImage[indexPath.row])

        
        //let model = itemsOfImage[indexPath.row]
        
 //   cell.imageLabel.text = model.title
        
        
        return cell
    }
    
    
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoogleImageDetailViewController" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let dvc = segue.destination as! GoogleImageDetailViewController
            
    
                dvc.imageUrl = itemsOfImage[indexPath.row].link!
            
                
            
            }
        }
        
    }
    

}


