//
//  Item.swift
//  eCommerce Test
//
//  Created by Michael Grant on 11/11/19.
//  Copyright © 2019 Michael Grant. All rights reserved.
//

import Foundation

struct Item {
    
    let itemImageName: String
    let itemPrice: String
    var inCart: Bool
    
    init(image: String, price: String, inCart: Bool) {
        
        itemImageName = image
        itemPrice = price
        self.inCart = inCart
    }
}




