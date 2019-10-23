//
//  NewUpdatesTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 23/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class NewUpdatesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "NewUpdateCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewUpdateCollectionViewCell")
        
        collectionView.showsHorizontalScrollIndicator = false
        
    }
    
}

extension NewUpdatesTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Data.updateArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewUpdateCollectionViewCell", for: indexPath) as! NewUpdateCollectionViewCell
        cell.updateItem = Data.updateArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: UIScreen.main.bounds.width - 147, height: collectionView.frame.height - 57)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        16
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 28.5, left: 16, bottom: 28.5, right: 16)
        
        
    }
    
}
