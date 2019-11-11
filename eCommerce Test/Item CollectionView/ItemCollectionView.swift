//
//  ItemCollectionView.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ItemCollectionView: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let imageNames: [String] = ["Milk", "Sausage", "Eggs", "Milk2", "Sausage 2", "Angus"]
    let itemPrices: [String] = ["$1.09/ea", "Buy 2 for $6.00", "$2.79/ea", "$2.99/ea", "Buy 2 for $5.00", "$3.99 /lb" ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemPrices.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Item", for: indexPath) as! ItemCollectionViewCell
        cell.foodImage.image = UIImage(named: imageNames[indexPath.row])
        cell.priceLabel.text = itemPrices[indexPath.row]
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.frame.width / 3.5), height: collectionView.frame.height)
    }
  

}
