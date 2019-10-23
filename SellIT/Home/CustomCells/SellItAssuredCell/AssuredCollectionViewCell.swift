//
//  AssuredCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 15/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class AssuredCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var assuredImageView: UIImageView!
    

    @IBOutlet weak var assuredLabel: UILabel!
    var assuredItem : Assured?{
        didSet{
            if let name = assuredItem?.name, let image = assuredItem?.image{
                assuredLabel.text = name
                assuredImageView.image = UIImage(named: image)
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        //self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.shadowOpacity = 0.4
        self.layer.shadowRadius = 5.0
        self.clipsToBounds = false
        self.layer.masksToBounds = false
        bgView.layer.cornerRadius = 4
    }

}
