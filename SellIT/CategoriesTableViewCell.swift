//
//  CategoriesTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 10/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class CategoriesTableViewCell: UITableViewCell
{
        
    @IBOutlet weak var collectionView: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
       collectionView.register(UINib(nibName: "CategoryItemCellCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryItemCellCollectionViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension CategoriesTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 10
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryItemCellCollectionViewCell", for: indexPath) as! CategoryItemCellCollectionViewCell
           return cell
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 90, height: 90)
       
       }
}
