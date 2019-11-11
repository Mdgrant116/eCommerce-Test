//
//  MainCollectionViewCell.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
   
    //MARK: - Properties
    
    let itemDataSource = ItemCollectionView()
    
    //MARK: - Outlets
    
    @IBOutlet var cellBackgroundView: UIView!
    @IBOutlet var itemCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        itemCollectionView.dataSource = itemDataSource
        itemCollectionView.delegate = itemDataSource
        
        itemCollectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Item")
        
    }

}
