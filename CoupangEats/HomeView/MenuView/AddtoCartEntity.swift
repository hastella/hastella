//
//  AddtoCartEntity.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

import Foundation

struct AddtoCartEntity : Decodable {
    let isSuccess : Bool
    let code : Int
    let message : String
    let result : [addTocart]?
}
    
struct addTocart : Decodable {
    let cartMenuIdx : String?
}

