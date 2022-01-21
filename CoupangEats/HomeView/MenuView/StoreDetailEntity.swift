//
//  StoreImgDataModel.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import Foundation

struct StoreDetailEntity : Decodable {
    let isSuccess : Bool
    let code : Int
    let message : String
    let result : [StoreDetail]
}
    
struct StoreDetail : Decodable {
    let name : String
    let storeImage : String
    let deliveryType : String
    let deliveryTime : String
    let deliveryFee : String
    let minimumPrice : String
    let packagingTime : String
    let location : String
}
