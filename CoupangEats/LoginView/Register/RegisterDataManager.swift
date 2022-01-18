//
//  RegisterDataManager.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

import Alamofire

class RegisterDataManager {
    func users(_ parameters: RegisterInput, viewController : RegisterViewController) {
        AF.request(Constant.BASE_URL + "/app/signup", method: .post, parameters: parameters, headers: nil)
            .validate()
            .responseDecodable(of: RegisterEntity.self) { response in
                switch response.result {
                case .success(let response):
                    if response.isSuccess {
                        viewController.presentAlert(title: response.message)
                    } else {
                        viewController.presentAlert(title: response.message)
                    }
                    
                case .failure(let error):
                    viewController.presentAlert(title: error.localizedDescription)
                }
            }
    }
}
