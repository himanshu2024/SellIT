//
//  RecentSearchTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 31/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class RecentSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var recentItemView: UIView!
    
    var searchedItem : [UILabel]?{
        didSet{
            if let array = searchedItem{
                addLabelToView(labelArray: array)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func addLabelToView(labelArray : [UILabel]) {
        recentItemView.subviews.forEach({ $0.removeFromSuperview() })
        for item in labelArray {
            recentItemView.addSubview(item)
        }
    }
}
