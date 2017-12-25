//
//  GoogleTableViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 21.12.2017.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit
import Alamofire

class GoogleTableViewController: UITableViewController {

    let images = ["1","2","3"]   
    let labelImages = ["one","two","three"]
    
//    let params = ["q":"cats",
//                 "cx":"009539564186860760717:0ljwb3egsoe",
//                "key":"AIzaSyAkmpHsyhnXp_ukaEQXtVY-a0aqAuq2cGE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        let baseURL = URL (string: "https://www.googleapis.com/customsearch/v1")
//
//
//
//            Alamofire.request("https://www.googleapis.com/customsearch/v1", parameters: params)
//                .validate()
//                .responseJSON { (response) -> Void in
//                    guard response.result.isSuccess else {
//                        print("Error: \(String(describing: response.result.error))")
//           //             completion(nil)
//                        return
//                    }
//
//                    guard let value = response.result.value as? [String: Any],
//                        let rows = value["rows"] as? [[String: Any]] else {
//                            print(response)
//  //                          completion(nil)
//                            return
//                    }
//
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

        
        return images.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! GoogleTableViewCell

  //      let label = thumbnailLink
        
        
   cell.thumbnailImageView.image = UIImage(named: images[indexPath.row])
        cell.imageLabel.text =  labelImages[indexPath.row]

        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueID" {
//            if let indexPath = tableView.indexPathForSelectedRow {
//                let dvc = segue.destination as! GoogleImageDetailViewController
//                dvc.imageName = self.images[indexPath.row]////!!!!!!!!!!!!!!!!!!!!!!!!!!!
//
            
            }
        }
        
    }
    
//    func dowloadFromGoogle (imageManager : ImageManager) {
//
//    }
    
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


