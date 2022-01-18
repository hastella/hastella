//
//  ViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/14.
//

import UIKit
import MapKit

class LoginViewController: UIViewController, CLLocationManagerDelegate {
    
    let Lvc : String = "LoginViewController"
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var findIDBtn: UIButton!
    @IBOutlet weak var findPWBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var closeBtn: UIButton!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.loginBtn.layer.cornerRadius = 25
        self.emailTF.tintColor = UIColor.darkGray
        self.pwTF.tintColor = UIColor.darkGray
        
        //MARK: mapKit
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
//        mapView.showsUserLocation = true
    }
    
    //MARK: 빈 화면을 눌렀을 때 키보드가 내려가도록 처리
    func dismissKeyboardWhenTappedAround() {
            let tap: UITapGestureRecognizer =
                UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        tap.cancelsTouchesInView = false
            self.view.addGestureRecognizer(tap)
        }
        @objc func dismissKeyboard() {
            self.view.endEditing(false)
        }
    
    // MARK: 네비게이션 바 숨기기
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
//    // MARK: Dismiss
//    @IBAction func backVC(_ sender: Any) {
//            self.navigationController?.popViewController(animated: true)
//    }
    
    // MARK: 로그인
    @IBAction func loginBtn(_ sender: Any) {
//        if Constant.shared.isLoggedIn {
//        let LoginInfo = LoginInput(email: self.emailTF.text!, password: self.pwTF.text!)
//                LoginDataManager().usersLogin(LoginInfo, viewController: self)
        
//        // Email validation
//        guard let id = emailTF.text, id.isExists else {
//            self.presentAlert(title: "이메일을 입력해주세요")
//            return
//        }
//
//        // Password validation
//        guard let password = pwTF.text, password.isExists else {
//            self.presentAlert(title: "비밀번호를 입력해주세요")
//            return
//        }
//
//        // Requst Sign In
//        self.dismissKeyboard()
////        self.showIndicator()
//        let input = SignInRequest(id: id, password: password)
//        dataManager.postSignIn(input, delegate: self)
//    }
//    }
//        if Constant.shared.isLoggedIn {
        let Storyboard = UIStoryboard (name: "Main", bundle: nil)
        guard let tabbarVC = Storyboard.instantiateViewController(withIdentifier: "MainTabBarController") as! UITabBarController? else {return}
        tabbarVC.modalPresentationStyle = .fullScreen
        self.present(tabbarVC, animated: false)
    }
//            else {return}


    // MARK: 아이디 찾기 이동
    @IBAction func findIDBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "FindIDViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "FindIDViewController") as UIViewController? else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
//        self.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: 비번 찾기 이동
    @IBAction func findPWBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "FindPWViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "FindPWViewController") as UIViewController? else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
//        self.navigationController?.pushViewController(vc, animated: true)
    }

    // MARK: 회원가입 뷰 이동
    @IBAction func registerBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "RegisterViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as UIViewController? else { return }
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
//        self.navigationController?.pushViewController(vc, animated: true)
    }

}

