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
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var cellType : HomeCellType?{
        didSet{
            if let type = cellType{
                collectionView.register(UINib(nibName: type.stringValue(), bundle: nil), forCellWithReuseIdentifier: type.stringValue())
                
                if HomeCellType(rawValue: 1) == type{
                    collectionView.backgroundColor = UIColor.cyan
                    label.backgroundColor = UIColor.cyan
                }
                
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

extension CategoriesTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let type = cellType else{
            return 0
        }
        
        switch type {
        case HomeCellType.CategoryItemCellCollectionViewCell:
            
            return Data.categoriesArray.count
            
        case HomeCellType.AssuredCollectionViewCell:
            
            return Data.assuredArray.count
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let type = cellType else{
            return UICollectionViewCell()
        }
        
        switch type {
        case HomeCellType.CategoryItemCellCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: type.stringValue(), for: indexPath) as! CategoryItemCellCollectionViewCell
            
            cell.category = Data.categoriesArray[indexPath.row]
            
            return cell
            
        case HomeCellType.AssuredCollectionViewCell:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: type.stringValue(), for: indexPath) as! AssuredCollectionViewCell
            cell.assuredItem = Data.assuredArray[indexPath.row]
            return cell
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 85, height: 80)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        guard let type = cellType else{
            return 10
        }
        
        switch type {
        case HomeCellType.CategoryItemCellCollectionViewCell:
            
            return 10
            
        case HomeCellType.AssuredCollectionViewCell:
            
            return 20
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        guard let type = cellType else{
            return 8
        }
        
        switch type {
        case HomeCellType.CategoryItemCellCollectionViewCell:
            
            return 8
            
        case HomeCellType.AssuredCollectionViewCell:
            
            return 16
            
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        guard let type = cellType else{
            return UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        }
        
        switch type {
        case HomeCellType.CategoryItemCellCollectionViewCell:
            
            return UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
            
        case HomeCellType.AssuredCollectionViewCell:
            
            return UIEdgeInsets(top: 10, left: 120, bottom: 10, right: 16)
            
        }
        
        
    }
}
