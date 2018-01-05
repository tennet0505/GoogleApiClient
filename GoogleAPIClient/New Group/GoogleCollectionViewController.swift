//
//  GoogleCollectionViewController.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit
import UIScrollView_InfiniteScroll

private let reuseIdentifier = "CollectionCell"



//var itemsOfImage = ["1","2","3","4","5"]

class GoogleCollectionViewController: UICollectionViewController {
    
    var searhString1 = ""
    var itemsOfImage = [Item]()
    let googleService = GooleService()
    var pageOf = 11
    var refreshControl: UIRefreshControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     

        googleService.getImage(q: searhString1,
                               
                               page: 1,
                               
                               successHandler: { ImagesResponse in
                                
                                self.itemsOfImage = ImagesResponse
                                
                                self.collectionView?.reloadData()
                                
        },
                               errorHandler: { Error in
                                
                                print(Error)
        }
        )
        
        self.collectionView?.reloadData()

        //MARK scrollView
        
        collectionView?.addInfiniteScroll { (collectionView) -> Void in
            
            self.loadMore()
            
            collectionView.finishInfiniteScroll()
            
        }

        // MARK Pull to refresh
        
        refreshControl = UIRefreshControl()
        refreshControl.tintColor = UIColor.lightGray
        refreshControl.backgroundColor = UIColor.darkGray
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        
        refreshControl.addTarget(self, action: #selector(pullToRefresh), for: UIControlEvents.valueChanged)
        
        collectionView?.addSubview(refreshControl!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemsOfImage.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! GoogleCollectionViewCell
        
       // cell.imageCollection.image = UIImage(named: itemsOfImage[indexPath.row])
    
        cell.setup(item: itemsOfImage[indexPath.row])
        
        return cell
    }
    
 
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let dvc = mainStoryBoard.instantiateViewController(withIdentifier: "GoogleImageDetailViewController") as! GoogleImageDetailViewController
        
        dvc.imageUrl = itemsOfImage[indexPath.row].link!
        
        self.navigationController?.pushViewController(dvc, animated: true)
                
        
    }
    

    // MARK: UICollectionViewDelegate

    func loadMore() {
        
        googleService.getImage(q: searhString1, page: pageOf,
                                    successHandler:  { ImagesResponse in
                                        
                                        self.itemsOfImage.append(contentsOf: ImagesResponse)
                                        
                                        self.pageOf = self.pageOf + 10
                                        
                                        self.collectionView?.reloadData()
                                        
        },
                                    errorHandler: { Error in
                                        
                                        print(Error)
        }
        )
        
    }
    @objc func pullToRefresh() {
        googleService.getImage(q: searhString1,
                               page: self.pageOf,
                               successHandler: { ImagesResponse in
                                self.itemsOfImage = ImagesResponse
                                
                                self.pageOf = self.pageOf + 10
                                
                                self.refreshControl?.endRefreshing()
                                
                                self.collectionView?.reloadData()
                                
        },
                               errorHandler: { Error in
                                
                                print(Error)
        }
        )
    }


}
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */


