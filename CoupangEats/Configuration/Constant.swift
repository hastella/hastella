//
//  Constant.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

import Alamofire

/* Constant를 사용하는 이유: 앱 전체에 공유되는 임시저장소 */

struct Constant {
    static let shared = Constant()
    
    var jwt: String?
    var token: String = ""
    var isLoggedIn: Bool { (jwt == nil) ? false: true }
    private init() {}

    static let BASE_URL : String = "https://coupangeats-clone.site"
    static let HEADERS : HTTPHeaders = ["x-access-token" : Constant.shared.token]
    
//    static var MY_TOKEN : String = ""
//    static var MY_ID : Int = 0
////    static var CP_TOKEN : HTTPHeaders = ["x-access-token" : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsImlhdCI6MTY0MTk2OTExMSwiZXhwIjoxNjczNTA1MTExLCJzdWIiOiJ1c2VySW5mbyJ9.mxQDFFDKb84oOR4kCacc7lOrOshvkQ4rOX760ohY-1Q"]
//
//    static var HOPE_CNT : Int = 0
//    static var HOPE_CLICKED : Int = 0
//    static var USER_ID : Int = 0
//
//    static var DATA_CNT : Int = 1
}




