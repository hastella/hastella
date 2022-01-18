//
//  MenuInfoEntity.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

import Foundation

struct MenuInfoEntity : Decodable {
    let isSuccess : Bool
    let code : Int
    let message : String
    let result : [menuInfo]?
}
    
struct menuInfo : Decodable {
    let name : String?
    let menuImage : String?
    let introduce : String?
    let price : String?
}
