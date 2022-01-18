//
//  BannerCollectionViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

import UIKit

class BannerCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "BannerCollectionViewCell"
    
    @IBOutlet weak var bannerImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with bannerImgLst: BannerDataModel) {
        self.bannerImgView.image = UIImage(named: bannerImgLst.bannerImgName)
    }

}
