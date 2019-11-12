//
//  ItemCollectionViewCell.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/10/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    var delegate: CartProtocol?
    var item: Item! {
        
        didSet {
            
            guard let item = item else { return }
            priceLabel.text = item.itemPrice
            foodImage.image = UIImage(named: item.itemImageName)
            
            if item.inCart {
                
                addItemButton.setImage(UIImage(named: "In Cart"), for: .normal)
                
            } else {
                
            }
            
        }
        
    }
    
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var addItemButton: UIButton!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    @IBAction func addToCartButton(_ sender: Any) {
        
        guard let delegate = delegate else { return }
        guard let item = item else { return }
        
        delegate.addItemToCart(item: item)
        
        if addItemButton.image(for: .normal) == UIImage(named: "In Cart") {
            
            self.addItemButton.transform = CGAffineTransform.init(scaleX: 2, y: 2)
            
            
            UIView.animate(withDuration: 0.5) {
                
                self.addItemButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 45))
                
            }
            
            addItemButton.setImage(UIImage(named: "Add Button"), for: .normal)
        } else {
            
            self.addItemButton.transform = CGAffineTransform.init(scaleX: 2, y: 2)
            
            UIView.animate(withDuration: 0.5) {
                
                self.addItemButton.transform = CGAffineTransform(rotationAngle: self.radians(degrees: 45))
                
            }
            
            addItemButton.setImage(UIImage(named: "In Cart"), for: .normal)
            
        }
        
    }
    
    func radians(degrees: Double) -> CGFloat {
        return CGFloat(degrees * .pi / degrees)
    }
}
