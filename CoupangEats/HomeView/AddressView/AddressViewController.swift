//
//  AddressViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

import UIKit

class AddressViewController: UIViewController {
    
    static let identifier = "AddressViewController"

    @IBOutlet weak var setaddressBtn: UIButton!
    @IBOutlet weak var dismissBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dismissBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "AddressViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "AddressViewController") as UIViewController? else { return }
            vc.modalTransitionStyle = .coverVertical
            dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SearchAddressBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "AddressViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "SearchAddressViewController") as? SearchAddressViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: false)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
