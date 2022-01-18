//
//  LoginEntity.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

struct LoginEntity : Decodable{
    var isSuccess : Bool
    var code : Int
    var message : String
    var result : emailToken?
}

struct emailToken : Decodable {
    var userId : Int?
    var jwt : String?
}
