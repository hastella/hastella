//
//  AddressEntity.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

struct AddressEntity : Decodable {
    var isSuccess : Bool
    var code : Int
    var message : String
    var result : AddressLocation?
}

struct AddressLocation : Decodable {
    var locationId : Int?
}

