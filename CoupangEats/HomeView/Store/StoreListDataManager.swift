//
//  StoreListDataManager.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

import Alamofire

class StoreListDataManager {

    func storeList(_ viewController: HomeViewController) {
            
        AF.request(Constant.BASE_URL + "/app/main", method: .get, parameters: nil, encoding: JSONEncoding(), headers: Constant.HEADERS)
              .validate()
              .responseDecodable(of: StoreEntity.self) { response in
                  switch response.result {
                  case .success(let response):
                      //성공했을 때
                      print("DEBUG>> \(response) ")
                      if response.isSuccess, let result = response.result {
                          viewController.storeLst = result
                          viewController.HomeTableView.reloadData()
                      }
                      //실패했을 때
                      else {
                          print(response.message)
                      }

                  case .failure(let error):
                      print(error.localizedDescription)
//                      delegate.failedToRequest(message: "서버와의 연결이 원활하지 않습니다")
                  }
              }
      }
}
