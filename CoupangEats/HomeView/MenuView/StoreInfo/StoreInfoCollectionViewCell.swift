//
//  NameCollectionViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import UIKit

class NameCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "NameCollectionViewCell"
    
    @IBOutlet weak var StoreNameLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var reviewCountLbl: UILabel!
    @IBOutlet weak var goToreviewBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with nameLst: StoreDetail) {
        self.StoreNameLbl?.text = nameLst.name
        self.scoreLbl?.text = nameLst.score
        self.reviewCountLbl?.text = nameLst.reviewCount
    }
}
