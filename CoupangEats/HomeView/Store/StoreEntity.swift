//
//  StoreEntity.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

import Foundation

struct StoreEntity : Decodable {
    let isSuccess : Bool
    let code : Int
    let message : String
    let result : [store]?
}
    
struct store : Decodable {
    let name : String?
    let storeImage : String?
    let score : String?
    let reviewCount : String?
    let deliveryFee : String?
    let deliveryTime : String?
    let deliveryType : String?
}
