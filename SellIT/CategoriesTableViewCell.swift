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
        
//        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
//        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        //layout.minimumInteritemSpacing = 20
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension CategoriesTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Data.categoriesArray.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryItemCellCollectionViewCell", for: indexPath) as! CategoryItemCellCollectionViewCell
        cell.category = Data.categoriesArray[indexPath.row]
        
           return cell
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           return CGSize(width: 85, height: 80)
       
       }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
    }
}
