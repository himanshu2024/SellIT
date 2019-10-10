//
//  CategoriesTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 10/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatImageCell", for: indexPath) as! CategoryItemCellCollectionViewCell
        
        return cell
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.register(UINib(nibName: "CategoryItemCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CatImageCell")
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
