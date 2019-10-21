//
//  AdsTabCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 18/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class AdsTabCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var adsTabLabel: UILabel!
    
    @IBOutlet weak var blueLineView: UIView!
    override var isSelected: Bool {
      didSet {
          self.adsTabLabel.textColor = isSelected ? UIColor.blue : UIColor.black
        self.blueLineView.isHidden = !self.isSelected
      }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
