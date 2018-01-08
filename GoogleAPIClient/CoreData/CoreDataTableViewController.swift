//
//  CoreDataTableViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 08.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class CoreDataTableViewController: UITableViewController {

    
    var dataPass = [String]()
    var labelData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        dataPass.append(labelData)
        tableView.reloadData()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return dataPass.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoreDataCell", for: indexPath)
        as! CoreDataTableViewCell

      
        
        
       cell.labelCell.text = dataPass[indexPath.row]

        
        return cell
        
}
    

}
