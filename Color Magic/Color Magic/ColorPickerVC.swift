//
//  ColorPickerVC.swift
//  Color Magic
//
//  Created by PEDRO LUIS AARON R on 7/9/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import UIKit

class ColorPickerVC: UIViewController {
    
    var delegate:ColorTransferDelegate?=nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func colorBtnWasPressed(sender:UIButton){
        
        delegate?.userDidChoose(color: sender.backgroundColor!, withName: sender.titleLabel!.text!)
        self.navigationController?.popViewController(animated: true)
    }

}
