//
//  GoogleCollectionView.swift
//  GoogleAPIClient
//
//  Created by Admin on 05.01.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class GoogleCollectionView: UICollectionView

   var itemsOfImage = ["1","2","3","4"]
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return itemsOfImage.count
    }

    
    @available(iOS 6.0, *)
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! GoogleCollectionViewCell
        
        cell.imageCollection.image = UIImage(named: itemsOfImage[indexPath.row])
        
        
        return cell
        
        
    }

    
    

}
