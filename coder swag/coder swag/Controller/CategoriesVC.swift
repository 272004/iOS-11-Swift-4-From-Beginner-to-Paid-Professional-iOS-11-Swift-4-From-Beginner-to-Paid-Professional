//
//  ViewController.swift
//  coder swag
//
//  Created by PEDRO LUIS AARON R on 10/20/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    
    
    @IBOutlet weak var categoryTable:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource=self
        categoryTable.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell=tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category=DataService.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
            
            
        } else {
            return CategoryCell()
        }
    }
    
}

