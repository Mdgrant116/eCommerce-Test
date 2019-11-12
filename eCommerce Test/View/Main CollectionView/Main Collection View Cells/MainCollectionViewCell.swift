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
    @IBOutlet var topBorderView: UIView!
    @IBOutlet var bottomBorderView: UIView!
    @IBOutlet var basedOnYourShoppingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureCellCornersAndShadow()
        configureCell()
        
        
    }
    
    func configureCell() {
        
        itemCollectionView.dataSource = itemDataSource
        itemCollectionView.delegate = itemDataSource
        itemCollectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Item")
        
    }
    
    func configureCellCornersAndShadow() {
        
        contentView.layer.cornerRadius = 6.0
        contentView.layer.borderWidth = 1.0
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
        
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2.0)
        layer.shadowRadius = 4.0
        layer.shadowOpacity = 1.0
        layer.masksToBounds = false
        layer.backgroundColor = UIColor.clear.cgColor
        
    }
    
    
}
