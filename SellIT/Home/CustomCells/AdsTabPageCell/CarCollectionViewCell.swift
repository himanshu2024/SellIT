//
//  CarCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 20/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var carImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var placeLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var carItem : Car?{
        didSet{
            if let name = carItem?.name, let image = carItem?.image, let price = carItem?.price{
                nameLabel.text = name
                carImage.image = UIImage(named: image)
                priceLabel.text = price
                placeLabel.text = "Indiranagar"
            }
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        carImage.layer.cornerRadius = 8
    }

}
