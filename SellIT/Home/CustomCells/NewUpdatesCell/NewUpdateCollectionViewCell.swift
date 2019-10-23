//
//  NewUpdateCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 23/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class NewUpdateCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    var updateItem : NewUpdates?{
        didSet{
            if let image = updateItem?.image{
                imageView.image = UIImage(named: image)
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageView.layer.cornerRadius = 8
        
    }

}
