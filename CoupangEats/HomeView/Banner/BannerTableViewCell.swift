//
//  BannerTableViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

import UIKit

class BannerTableViewCell: UITableViewCell {
    
    private let bannerCellID = "BannerCollectionViewCell"

    @IBOutlet weak var bannerCollectionView: UICollectionView!
    
    var bannerImgLst = [BannerDataModel]()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        bannerCollectionView.register(UINib(nibName: bannerCellID, bundle: nil), forCellWithReuseIdentifier: bannerCellID)
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
    }
    
    func configure(with bannerImgLst: [BannerDataModel]) {
        self.bannerImgLst = bannerImgLst
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension BannerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImgLst.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: bannerCellID, for: indexPath) as! BannerCollectionViewCell
        cell.configure(with: bannerImgLst[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayOut: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
}
