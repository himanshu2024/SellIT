//
//  AdsTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 18/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class AdsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var adsTabsCollectionView: UICollectionView!
    @IBOutlet weak var adsTabPageCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        adsTabsCollectionView.delegate = self
        adsTabsCollectionView.dataSource = self
        
        adsTabsCollectionView.register(UINib(nibName: "AdsTabCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdsTabCollectionViewCell")
        
        adsTabsCollectionView.selectItem(at: IndexPath(row: 0, section: 0), animated: false, scrollPosition: [])
        
        
        adsTabPageCollectionView.delegate = self
        adsTabPageCollectionView.dataSource = self
        
        adsTabPageCollectionView.register(UINib(nibName: "AdsTabPageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdsTabPageCollectionViewCell")
        
        adsTabPageCollectionView.isPagingEnabled = true
        adsTabPageCollectionView.isScrollEnabled = false
        
        bottomView.layer.borderColor = UIColor.gray.cgColor
        bottomView.layer.borderWidth = 0.7
        bottomView.layer.cornerRadius = 5
        
    }
    
    
    
}

extension AdsTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == self.adsTabsCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsTabCollectionViewCell", for: indexPath) as! AdsTabCollectionViewCell
            if indexPath.row == 0{
                cell.adsTabLabel.text = "CARS & BIKES"
                
            }
            else{
                cell.adsTabLabel.text = "JOBS"
            }
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AdsTabPageCollectionViewCell", for: indexPath) as! AdsTabPageCollectionViewCell
            if indexPath.row == 0{
                cell.cellType = TabPageType.CarCollectionViewCell
            }
            else{
                cell.cellType = TabPageType.JobCollectionViewCell
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == self.adsTabsCollectionView){
            if indexPath.row == 0{
                return CGSize(width: 100, height: collectionView.frame.height)
            }
            else{
                return CGSize(width: 40, height: collectionView.frame.height)
            }
        }else{
            return CGSize(width: adsTabPageCollectionView.frame.width, height: adsTabPageCollectionView.frame.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        30
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        if(collectionView == self.adsTabPageCollectionView){
            return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            
        }else{
            return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(collectionView == self.adsTabsCollectionView){
            adsTabPageCollectionView.scrollToItem(at: indexPath, at: [], animated: true)
        }else{
            
        }
    }
    
    
}
