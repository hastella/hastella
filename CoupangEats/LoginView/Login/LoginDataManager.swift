//
//  LoginDataManager.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

import Alamofire

class LoginDataManager {
    
    func usersLogin(_ parameters: LoginInput, viewController: LoginViewController) {
        
        let URL = Constant.BASE_URL + "/app/login"
        
        // HTTP Method: post
        AF.request(URL,
                    method: .post,
                    parameters: parameters,
                    encoder: JSONParameterEncoder(),
                    headers: nil)
            .validate()
            .responseDecodable(of: LoginEntity.self) { response in
                
                switch response.result {
                case .success(let response):
                    //성공했을 때
                    print("DEBUG>> \(response) ")
                    
//                    if response.isSuccess, let result = response.result {
                    
                    let Storyboard = UIStoryboard (name: "Main", bundle: nil)
                    guard let tabbarVC = Storyboard.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController? else {return}
                    tabbarVC.modalPresentationStyle = .fullScreen
                    viewController.present(tabbarVC, animated: true)
                    
//                    else {
//                        switch response.code {
//                        case 2008: viewController.failedToRequest(message: "이메일을 입력해주세요")
//                        case 2011: viewController.failedToRequest(message: "비밀번호를 입력 해주세요.")
//                        case 2003: viewController.failedToRequest(message: "이메일을 형식을 정확하게 입력해주세요.")
//                        case 3003: viewController.failedToRequest(message: "아이디가 잘못 되었습니다.")
//                        case 3004: viewController.failedToRequest(message: "비밀번호가 잘못 되었습니다.")
//                        case 3005: viewController.failedToRequest(message: "비활성화 된 계정입니다. 고객센터에 문의해주세요.")
//                        case 3006: viewController.failedToRequest(message: "탈퇴 된 계정입니다. 고객센터에 문의해주세요")
//                        case 4000: viewController.failedToRequest(message: "데이터 베이스 에러")
//                    }
//                }
                case .failure(let error):
                    print("DEBUG>> 로그인 데이터 Get Error: \(error.localizedDescription)")
                }
            }
    }
}
    
//    func isLoggedIn(_ parameters: LoginInput, viewController : LoginViewController) {
//        AF.request(Constant.BASE_URL + "/app/login", method: .post, parameters: parameters, headers: nil)
//            .validate()
//            .responseDecodable(of: LoginEntity.self) { response in
//                switch response.result {
//                case .success(let response):
//                    if response.isSuccess {
//                        Constant.MY_TOKEN = (response.result?.jwt)!
//                        Constant.MY_ID = (response.result?.userId)!
//                        print("이메일 토큰 => \(Constant.MY_TOKEN)")
//                        UserDefaults.standard.set(Constant.MY_TOKEN, forKey: "myToken")
//
////                        let vc = MainTabBarController()
////                        vc.modalPresentationStyle = .overFullScreen
////                        viewController.present(vc, animated: true)
//                    } else {
//                        viewController.presentAlert(title: response.message)
//                    }
//
//
//                case .failure(let error):
//                    print("로그인 실패...")
//                    print(error.localizedDescription)
//                }
//            }
//    }

