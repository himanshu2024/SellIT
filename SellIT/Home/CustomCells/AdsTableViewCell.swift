//
//  AdsTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 18/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class AdsTableViewCell: UITableViewCell {

    @IBOutlet weak var adsTabsCollectionView: UICollectionView!
    @IBOutlet weak var adsTabPageCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        adsTabsCollectionView.delegate = self
        adsTabsCollectionView.dataSource = self
        
        adsTabsCollectionView.register(UINib(nibName: "AdsTabCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdsTabCollectionViewCell")
        
        adsTabPageCollectionView.delegate = self
        adsTabPageCollectionView.dataSource = self
        
        adsTabPageCollectionView.register(UINib(nibName: "AdsTabPageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AdsTabPageCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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
            return CGSize(width: collectionView.frame.height, height: collectionView.frame.height)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        30
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
            return UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
            
    }
    
}
