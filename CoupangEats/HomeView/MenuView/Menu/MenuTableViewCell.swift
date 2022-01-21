//
//  MenuTableViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/20.
//

import UIKit

class MenuTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuPrice: UILabel!
    @IBOutlet weak var menuDetail: UILabel!
    
    @IBOutlet weak var menuImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
