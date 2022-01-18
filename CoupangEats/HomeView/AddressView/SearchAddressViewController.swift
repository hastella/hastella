//
//  RegisterAddressViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

import UIKit

class SearchAddressViewController: UIViewController {

    @IBOutlet weak var searchAddressTF: UITextField!
    
    @IBOutlet weak var dismissBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissBtn(_ sender: Any) {
        let Storyboard = UIStoryboard (name: "AddressViewController", bundle: nil)
        guard let vc = Storyboard.instantiateViewController(withIdentifier: "SearchAddressViewController") as UIViewController? else { return }
        vc.modalTransitionStyle = .coverVertical
            dismiss(animated: true, completion: nil)
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
