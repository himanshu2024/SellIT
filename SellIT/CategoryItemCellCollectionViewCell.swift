//
//  CategoryItemCellCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 10/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class CategoryItemCellCollectionViewCell: UICollectionViewCell {

    var category : Category?{
        didSet{
            if let name = category?.name, let image = category?.image{
                categoryLabel.text = name
                categoryImageView.image = UIImage(named: "file_refresh")
            }
            
        }
    }
    
    @IBOutlet weak var categoryImageView: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        categoryImageView.layer.borderColor = UIColor.black.cgColor
        categoryImageView.layer.borderWidth = 1
        categoryImageView.layer.cornerRadius = 10
    }

}
