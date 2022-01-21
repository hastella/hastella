//
//  MenuImgTableViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import UIKit

class StoreImgTableViewCell: UITableViewCell {
    
    private let storeImgCellID = "StoreImgCollectionViewCell"
    
    @IBOutlet weak var StoreImgCollectionView: UICollectionView!
    
    var storeImgLst = [StoreDetailEntity]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        StoreImgCollectionView.register(UINib(nibName: storeImgCellID, bundle: nil), forCellWithReuseIdentifier: storeImgCellID)
        StoreImgCollectionView.delegate = self
        StoreImgCollectionView.dataSource = self

    }
    
    func configure(with storeImgLst: [StoreDetailEntity]) {
        self.storeImgLst = storeImgLst
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

extension StoreImgTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storeImgLst.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: storeImgCellID, for: indexPath) as! StoreImgCollectionViewCell
        cell.configure(with: storeImgLst[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayOut: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
}

