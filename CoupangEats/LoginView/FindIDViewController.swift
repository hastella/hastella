//
//  FindIDViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//

import UIKit

class FindIDViewController : UIViewController {
    
    
    @IBOutlet weak var phoneAuthBtn: UIButton!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var authNumberBtn: UIButton!
    
    @IBOutlet weak var dismissBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.phoneAuthBtn.layer.cornerRadius = 3
        self.authNumberBtn.layer.cornerRadius = 3
//        self.phoneAuthBtn.tintColor =
        
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
    
    // MARK: 네비게이션 바 숨기기
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            navigationController?.setNavigationBarHidden(true, animated: animated)
        }
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            navigationController?.setNavigationBarHidden(false, animated: animated)
        }
        
        // MARK: Dismiss
        @IBAction func dismissBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "Main", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController? else { return }
            vc.modalTransitionStyle = .coverVertical
            dismiss(animated: true, completion: nil)
    }
}
