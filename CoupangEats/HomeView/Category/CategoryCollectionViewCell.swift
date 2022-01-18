//
//  CategoryCollectionViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/15.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CategoryCollectionViewCell"
    
    @IBOutlet weak var catImgView: UIImageView!
    @IBOutlet weak var catLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with models: CategoryDataModel) {
        self.catImgView.image = UIImage(named: models.imageName)
        self.catLbl.text = models.textLbl
    }

//    func setData(input: String, input2: String) {
//        if let imageView = UIImage(named: input) {
//            catImgView?.image = imageView
//        }
//        catLbl?.text = input2
//    }
}

