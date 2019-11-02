//
//  RecentSearchTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 31/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class RecentSearchTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let labelNum = UILabel()
        var yPos = 16
        var xPos = 16
        labelNum.text = "num1"
        labelNum.textAlignment = .center
        labelNum.frame = CGRect( x:xPos, y:yPos, width:200, height: 80)
        labelNum.layer.borderColor = UIColor.black.cgColor
        labelNum.layer.borderWidth = 1
        labelNum.layer.cornerRadius = 5
        labelNum.sizeToFit()
        self.contentView.addSubview(labelNum)
        
        
        xPos += Int(labelNum.frame.width) + 16
        
        let labelNum1 = UILabel()
        
        labelNum1.text = "num1Num3"
        labelNum1.textAlignment = .center
        labelNum1.frame = CGRect( x:xPos, y:yPos, width:200, height: 80)
        labelNum1.layer.borderColor = UIColor.black.cgColor
        labelNum1.layer.borderWidth = 1
        labelNum.layer.cornerRadius = 5
        labelNum1.sizeToFit()
        self.contentView.addSubview(labelNum1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
