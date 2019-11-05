//
//  ParentCategoryTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 03/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class ParentCategoryTableViewCell: UITableViewCell {
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var category : Category?{
        didSet{
            if let cat = category{
                nameLabel.text = cat.name
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected{
            baseView.backgroundColor = UIColor.init(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
            nameLabel.font = UIFont.boldSystemFont(ofSize: 15)
        }else{
            baseView.backgroundColor = .white
            nameLabel.font = UIFont.systemFont(ofSize: 15)
        }
    }
    
}
