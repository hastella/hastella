//
//  UserInfoSingleton.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

//import Foundation
//import UIKit
//
//// 1번 싱글톤 객체를 생성한다.
///* 사용자 정보를 앱 어디서나 접근할 수 있도록 만들 싱글톤이다. */
//
//class UserInfoSingleton {
//    static let shared = UserInfoSingleton()
//    
//    var username: String = ""
//    var phoneNumber: Int = 0
//    
//    private init() { } // 접근제한자
//}
//
//class DataManager {
//    
//    func login() {
//        // API
//        
//        // 결과물 -> "JWT Token"
////        Constant.shared.jwt = ""
//    }
//}
//    
//    /* Constant를 사용하는 이유: 앱 전체에 공유되는 임시저장소 */
//
//class Constant {
//        static let shared = Constant()
//        static let baseURL = ""
//        
//        var jwt: String
//        var isLoggedIn: Bool { (jwt == nil) ? false: true }
//    
//        private init() {
//            jwt = ""
//        }
//}

/*
 싱글톤을 사용하는 경우
 1. 색상 등록
 2. 아주 간단한 데이터 전달
 3. 자동로그인 로직 구현 시, UserDefault (리프레쉬토큰, jwt토큰)
 */

//class Constant {
//    static let shared = Constant()
//    static let baseURL = "www.google.com/"
//
//    var jwt: String?
//
//    private init() {
//        jwt = ""
//    }
