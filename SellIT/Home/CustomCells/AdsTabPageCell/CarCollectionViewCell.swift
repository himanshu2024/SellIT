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
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        carImage.layer.cornerRadius = 8
    }

}
