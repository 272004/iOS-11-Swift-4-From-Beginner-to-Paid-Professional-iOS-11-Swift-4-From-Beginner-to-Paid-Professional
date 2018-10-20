//
//  Category.swift
//  coder swag
//
//  Created by PEDRO LUIS AARON R on 10/20/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title:String
    private(set) var imageName:String
    
    init(title:String,imageName:String){
        self.title=title
        self.imageName=imageName
    }
    
}
