//
//  RegisterViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

import UIKit

class RegisterViewController : UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var dismissBtn: UIButton!
    @IBOutlet weak var emailTF : UITextField!
    @IBOutlet weak var passwordTF : UITextField!
    @IBOutlet weak var nameTF : UITextField!
    @IBOutlet weak var phonenumberTF : UITextField!
    @IBOutlet weak var nextBtn : UIButton!
    
    var completionHandler: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.swipeRecognizer()
        self.dismissKeyboardWhenTappedAround()
        
        }
    
    // MARK: 빈화면 키보드 내려가기
        func dismissKeyboardWhenTappedAround() {
            let tap: UITapGestureRecognizer =
                UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
            self.view.addGestureRecognizer(tap)
        }
        @objc func dismissKeyboard() {
            self.view.endEditing(false)
        }
    
//    // MARK: 텍스트 클리어 버튼
//        func clearBtnTF() {
//            self.emailTF.clearButtonMode = .always
//            self.emailTF.clearButtonMode = .whileEditing
//            self.passwordTF.clearButtonMode = .whileEditing
//            self.passwordTF.clearButtonMode = .always
//            self.nameTF.clearButtonMode = .always
//            self.nameTF.clearButtonMode = .whileEditing
//        }


    // MARK: 왼쪽 제스처 dismiss
    func swipeRecognizer() {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer){
           if let swipeGesture = gesture as? UISwipeGestureRecognizer {
               switch swipeGesture.direction{
               case UISwipeGestureRecognizer.Direction.right:
                   self.navigationController?.popViewController(animated: true)
               default: break
               }
           }
    }
    
    // MARK: Dismiss
    @IBAction func dismissBtn(_ sender: Any) {
        
        let Storyboard = UIStoryboard (name: "Main", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController? else { return }
        vc.modalTransitionStyle = .coverVertical
        dismiss(animated: true, completion: nil)
    }
}
    
    // MARK: Register
//    @IBAction func buttonDidTap(_ sender: UIButton) {
//
////        let username = "Uno"
//
//        // 그래서 싱글톤*** / 전역변수 / UserDefault => 싱글톤
//
//        // 2 싱글톤 객체에 있는 멤버변수에 데이터를 할당한다.
//
//        /* 싱글톤에 데이터 전달 */
//        UserInfoSingleton.shared.username = username
//
//    }
//}

               
//    // MARK: 휴대폰 인증 뷰
//    @IBAction func phoneAuth(_ sender: Any) {
//           }
               
//
//    // MARK: Dismiss
//               func closeBtn(_ sender: Any) {
//    guard let navigation = UIStoryboard(name: "LoginView", bundle: nil).instantiateViewController(identifier: "LoginViewNavigationController") as? LoginViewNavigationController else { return }
//       navigation.modalPresentationStyle = .overFullScreen
//       self.present(navigation, animated: true, completion: nil)
                   
