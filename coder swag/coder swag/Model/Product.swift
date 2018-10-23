//
//  Product.swift
//  coder swag
//
//  Created by PEDRO LUIS AARON R on 10/22/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import Foundation

struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String,price: String,imageName: String) {
        self.imageName=imageName
        self.title=title
        self.price=price
    }
}
