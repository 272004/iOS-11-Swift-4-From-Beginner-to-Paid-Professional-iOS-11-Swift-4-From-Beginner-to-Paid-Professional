//
//  Wage.swift
//  window-shopper
//
//  Created by PEDRO LUIS AARON R on 10/15/18.
//  Copyright © 2018 paaron. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double,andPrice price:Double)-> Int{
        
        return Int(round(price/wage))
        
    }
}
