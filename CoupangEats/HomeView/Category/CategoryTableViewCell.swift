//
//  CategoryTableViewCell.swift
//  CoupangEats
//
//  Created by 하상이 on 2022/01/18.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    private let cellID = "CategoryCollectionViewCell"

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var models = [CategoryDataModel]()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryCollectionView.register(UINib(nibName: cellID, bundle: nil), forCellWithReuseIdentifier: cellID)
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    
    func configure(with models: [CategoryDataModel]) {
        self.models = models
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension CategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CategoryCollectionViewCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayOut: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 250, height: 250)
    }
}
