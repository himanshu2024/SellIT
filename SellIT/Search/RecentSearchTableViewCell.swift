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
    
    var searchedItem : [UIButton]?{
        didSet{
            if let array = searchedItem{
                addLabelToView(labelArray: array)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func addLabelToView(labelArray : [UIButton]) {
        recentItemView.subviews.forEach({ $0.removeFromSuperview() })
        for item in labelArray {
            item.addTarget(self, action: #selector(itemButtonClick), for: .touchUpInside)
            recentItemView.addSubview(item)
        }
    }
    
    
    @objc func itemButtonClick(sender : UIButton) {
        print(sender.titleLabel!.text!)
    }
}
