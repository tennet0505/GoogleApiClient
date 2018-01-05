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
import UIScrollView_InfiniteScroll


class GoogleTableViewController: UITableViewController, UISearchBarDelegate, UISearchControllerDelegate{
    

    var searhString = ""
    var itemsOfImage = [Item]()
    let googleService = GooleService()
    var pageOf = 11

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        googleService.getImage(q: searhString,
                               page: 1,
                               successHandler: { ImagesResponse in
                                self.itemsOfImage = ImagesResponse

                                self.tableView.reloadData()

        },
                               errorHandler: { Error in

                                print(Error)
        }
        )
        
        self.tableView.reloadData()

        // MARK InfifnityScroll
        self.tableView.addInfiniteScroll { (tableView) in
            
            self.loadMore()
           
            self.tableView.finishInfiniteScroll()
        }
        
        
        // MARK Pull to refresh
        refreshControl = UIRefreshControl()
        refreshControl?.tintColor = UIColor.lightGray
        refreshControl?.backgroundColor = UIColor.darkGray
        refreshControl?.attributedTitle = NSAttributedString(string: "Pull to refresh")
        
        refreshControl?.addTarget(self, action: #selector(pullToRefresh), for: UIControlEvents.valueChanged)
        
        tableView.addSubview(refreshControl!)
        
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
    
    
    //MARK load more data after scrolling
    func loadMore() {
        self.googleService.getImage(q: self.searhString, page: self.pageOf,
                                    successHandler:  { ImagesResponse in
                                        
                                        self.itemsOfImage.append(contentsOf: ImagesResponse)
                                        
                                        self.pageOf = self.pageOf + 10
                                        
                                        self.tableView.reloadData()
                                        
        },
                                    errorHandler: { Error in
                                        
                                        print(Error)
        }
        )
       
    }
    @objc func pullToRefresh() {
        googleService.getImage(q: searhString,
                               page: self.pageOf,
                               successHandler: { ImagesResponse in
                                self.itemsOfImage = ImagesResponse
                                
                                self.pageOf = self.pageOf + 10
                                
                                self.refreshControl?.endRefreshing()

                                self.tableView.reloadData()
                                
        },
                               errorHandler: { Error in
                                
                                print(Error)
        }
        )
             }

    
   
    
}


