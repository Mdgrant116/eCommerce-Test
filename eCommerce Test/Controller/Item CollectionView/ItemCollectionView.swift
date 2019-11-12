//
//  ItemCollectionView.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ItemCollectionView: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, CartProtocol {
    
    
    var item: Item!
    var items = ItemList().items
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath) as! ItemCollectionViewCell
        
        
        cell.item = items[indexPath.row]
        cell.delegate = self
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        return CGSize(width: (collectionView.frame.width / 3.5), height: collectionView.frame.height)
        
    }
    
    func addItemToCart(item: Item) {
        
        
    }
    
    
    
}
