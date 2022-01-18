//
//  FindPWViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/17.
//


import UIKit

class FindPWViewController : UIViewController {
    
    // MARK: Dissmiss
    @IBAction func dismissBtn(_ sender: Any) {
    let Storyboard = UIStoryboard (name: "Main", bundle: nil)
    guard let vc = Storyboard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController? else { return }
        vc.modalTransitionStyle = .coverVertical
        dismiss(animated: true, completion: nil)
}
    
}
