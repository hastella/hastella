//
//  AddtoCartDataManager.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

//import Alamofire
//
//class AddtoCartDataManager {
//
//    func addToCart(_ parameters: AddtoCartInput, viewController: MenuItemViewController) {
//
//        let URL = Constant.BASE_URL + "/app/store/menu/:menuIdx"
//
//        // HTTP Method: post
//        AF.request(URL,
//                    method: .post,
//                    parameters: parameters,
//                    encoder: JSONParameterEncoder(),
//                   headers: Constant.HEADERS)
//            .validate()
//            .responseDecodable(of: AddtoCartEntity.self) { response in
//
//                switch response.result {
//                case .success(let response):
//                    //성공했을 때
//                    print("DEBUG>> \(response) ")
//
////                    if response.isSuccess, let result = response.result {
//
////                    let Storyboard = UIStoryboard (name: "Main", bundle: nil)
////                    guard let tabbarVC = Storyboard.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController? else {return}
////                    tabbarVC.modalPresentationStyle = .fullScreen
////                    viewController.present(tabbarVC, animated: true)
//
//                case .failure(let error):
//                    print("DEBUG>> 주소 데이터 Get Error: \(error.localizedDescription)")
//                }
//            }
//    }
//}
