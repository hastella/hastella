//
//  SearchViewCollectionViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/16.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var SearchImgView: UIImageView!
    @IBOutlet weak var SearchLbl: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        SearchImgView?.image = nil
        SearchLbl?.text = nil
    }
    
    func setData(input: String, input2: String) {
        if let imageView = UIImage(named: input) {
            SearchImgView?.image = imageView
        }
        SearchLbl?.text = input2
    }
}
