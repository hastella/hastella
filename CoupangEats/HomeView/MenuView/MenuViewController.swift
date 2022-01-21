//
//  MenuViewController.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/19.
//

import UIKit

class MenuViewController: UIViewController {
    
    private let storeImgCellID = "StoreImgTableViewCell"
    private let storeNameCellID = "StoreNameTableViewCell"
    private let detailInfoCellID = "DetailInfoTableViewCell"
    private let reviewCellID = "ReviewTableViewCell"
    private let CellID = "MenuTableViewCell"

        @IBOutlet weak var MenuTableView: UITableView!
    
    var menuImgLst : [StoreImgDataModel] = []
    var reviewLst : [ReviewDataModel] = []
    var menuLst : [menu] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    MenuDataManager().menuList(self)
    
    MenuTableView.delegate = self
    MenuTableView.dataSource = self
    
    //MARK: Nib Register
    MenuTableView.register(UINib(nibName: storeImgCellID, bundle: nil), forCellReuseIdentifier: storeImgCellID)
    MenuTableView.register(UINib(nibName: storeNameCellID, bundle: nil), forCellReuseIdentifier: storeNameCellID)
    MenuTableView.register(UINib(nibName: detailInfoCellID, bundle: nil), forCellReuseIdentifier: detailInfoCellID)
    MenuTableView.register(UINib(nibName: reviewCellID, bundle: nil), forCellReuseIdentifier: reviewCellID)
    MenuTableView.register(UINib(nibName: CellID, bundle: nil), forCellReuseIdentifier: CellID)
        
//    CategoryListCV()
//    BannerListCV()
        
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
