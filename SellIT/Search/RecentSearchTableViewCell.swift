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
    
    let searchedItem = ["car","mobile","iphone","Swift Maruti Suzuki","iron","samsung"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("View width = \(recentItemView.frame.width)")
        print("Screen width = \(UIScreen.main.bounds.width)")
        setUpUIRecentItem(itemArray: searchedItem)
        
    }
    
    func setUpUIRecentItem(itemArray : [String]) {
        var yPos = 16
        var xPos = 0
        var xPosComparetor = 0
        let totalWidthSpace = UIScreen.main.bounds.width - 32
        for itemIndex in 0..<itemArray.count{
            let item = itemArray[itemIndex]
            let labelItem = UILabel()
            labelItem.text = item
            labelItem.font = labelItem.font.withSize(13)
            let labelCGSize = labelItem.sizeThatFits(CGSize(width: 100, height: 50))
            labelItem.textAlignment = .center
            
            labelItem.frame = CGRect( x:xPos, y:yPos, width:Int(labelCGSize.width+16), height: Int(labelCGSize.height+16))
            
            labelItem.layer.borderColor = UIColor.black.cgColor
            labelItem.layer.borderWidth = 0.5
            labelItem.layer.cornerRadius = 5
            self.recentItemView.addSubview(labelItem)
            
            xPos += Int(labelItem.frame.width) + 16
            xPosComparetor = xPos
            if itemIndex < itemArray.count-1{
                let tmpLabel1 = getLabel(text: itemArray[itemIndex+1])
                xPosComparetor += Int(tmpLabel1.width)
            }
            print("label width = \(xPosComparetor)")
            if xPosComparetor > Int(totalWidthSpace){
                xPos = 0
                yPos += Int(labelItem.frame.height) + 16
            }
        }
    }

    func getLabel(text : String) -> CGSize {
        let newLabel = UILabel()
        newLabel.text = text
        return newLabel.sizeThatFits(CGSize(width: 100, height: 50))
    }
}
