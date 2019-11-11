//
//  ItemCollectionViewCell.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet var priceLabel: UILabel!
    
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    @IBAction func addToCartButton(_ sender: Any) {
        
        
    }
}
