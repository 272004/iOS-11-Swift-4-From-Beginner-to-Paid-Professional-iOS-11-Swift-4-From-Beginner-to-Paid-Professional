//
//  CategoryCell.swift
//  coder swag
//
//  Created by PEDRO LUIS AARON R on 10/20/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
     @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category:Category){
        categoryImage.image=UIImage(named: category.imageName)
        categoryTitle.text=category.title
    }

}
