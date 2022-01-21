//
//  CollectionViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import UIKit

class StoreImgCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "StoreImgCollectionViewCell"
    
    @IBOutlet weak var storeImgView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with storeImgView: StoreDetailEntity) {
        self.storeImgView.image = UIImage(named: storeImgView.storeImage)
    }
}
