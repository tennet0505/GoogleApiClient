//
//  SideBarTableViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class SideBarTableViewController: UITableViewController {

    var sideBarMenu = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sideBarMenu = ["Home","Google","Yandex"]
     
    }

    // MARK: - Table view data source

 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return sideBarMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: sideBarMenu[indexPath.row], for: indexPath)
        
        cell.textLabel?.text = sideBarMenu[indexPath.row]
        
        return cell
    }
 
}
