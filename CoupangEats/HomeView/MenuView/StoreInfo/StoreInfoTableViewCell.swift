//
//  TableViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import UIKit

class StoreInfoTableViewCell: UITableViewCell {

    private let nameCellID = "StoreInfoCollectionView"
    
    @IBOutlet weak var StoreInfoCollectionView: UICollectionView!
    
    var storeInfoLst = [StoreDetail]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        StoreInfoCollectionView.register(UINib(nibName: nameCellID, bundle: nil), forCellWithReuseIdentifier: nameCellID)
        StoreInfoCollectionView.delegate = self
        StoreInfoCollectionView.dataSource = self

    }
    
    func configure(with storeImgLst: [StoreDetail]) {
        self.storeInfoLst = storeImgLst
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension StoreInfoTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameLst.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: nameCellID, for: indexPath) as! NameCollectionViewCell
        cell.configure(with: storeInfoLst[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayOut: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
}


