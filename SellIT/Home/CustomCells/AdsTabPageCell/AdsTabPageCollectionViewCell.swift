//
//  AdsTabPageCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 18/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class AdsTabPageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var pageCollectionView: UICollectionView!
    
    var cellType : TabPageType?{
        didSet{
            if let type = cellType{
                            pageCollectionView.register(UINib(nibName: type.stringValue(), bundle: nil), forCellWithReuseIdentifier: type.stringValue())
                            
                            if TabPageType(rawValue: 1) == type{
                            }
                            
                        }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pageCollectionView.delegate = self
        pageCollectionView.dataSource = self
        pageCollectionView.showsHorizontalScrollIndicator = false
    }
    
}

extension AdsTabPageCollectionViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let type = cellType else{
            return 1
        }
        
        switch type {
        case TabPageType.CarCollectionViewCell:
            
            return Data.carArray.count
            
        case TabPageType.JobCollectionViewCell:
            
            return Data.jobArray.count
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let type = cellType else{
            return UICollectionViewCell()
        }
        
        switch type {
        case TabPageType.CarCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: type.stringValue(), for: indexPath) as! CarCollectionViewCell
            
            cell.carItem = Data.carArray[indexPath.row]
            
            return cell
            
        case TabPageType.JobCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: type.stringValue(), for: indexPath) as! JobCollectionViewCell
            cell.jobItem = Data.jobArray[indexPath.row]
            return cell
            
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        guard let type = cellType else{
            return CGSize(width: 150, height: 150)

        }
        
        switch type {
        case TabPageType.CarCollectionViewCell:
            
            return CGSize(width: 150, height: 150)

        case TabPageType.JobCollectionViewCell:
            
            return CGSize(width: 170, height: 150)

        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        
    }
    
}
