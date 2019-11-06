//
//  RecentSearchBrain.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 06/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
import UIKit

struct RecentSearchBrain {
    
    let currentSearchKey = "currentSearch"
    let preferences = UserDefaults.standard
    let maxRecentSearchCount = 10
    func saveRecentSearch(searchItem : String) {
        var searchArray = getRecentSearch()
        if searchArray.count == maxRecentSearchCount{
            searchArray.remove(at: 0)
        }
        searchArray.append(searchItem)
        preferences.set(searchArray, forKey: currentSearchKey)

    }
    
    func getRecentSearch() -> [String] {
        if(preferences.object(forKey: currentSearchKey)) != nil{
            return preferences.stringArray(forKey: currentSearchKey) ?? []
        }
        return []
    }
    
    
    func getRecentSearchItemData() -> (height : Float, labelArray : [UILabel]) {
        var yPos = 16
        var xPos = 0
        var xPosComparetor = 0
        let totalWidthSpace = UIScreen.main.bounds.width - 32
        var labelArray = [UILabel]()
        
        let itemArray = getRecentSearch()
        
        guard itemArray.count > 0 else {
            return (0,[])
        }
        
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
            //parentView.addSubview(labelItem)
            labelArray.append(labelItem)
            
            xPos += Int(labelItem.frame.width) + 16
            xPosComparetor = xPos
            if itemIndex < itemArray.count-1{
                let tmpLabel1 = getLabel(text: itemArray[itemIndex+1])
                xPosComparetor += Int(tmpLabel1.width)
            }
            if xPosComparetor > Int(totalWidthSpace){
                xPos = 0
                yPos += Int(labelItem.frame.height) + 16
            }
        }
        
        return (Float(yPos + 80), labelArray)
        
    }
    
    func getLabel(text : String) -> CGSize {
        let newLabel = UILabel()
        newLabel.text = text
        return newLabel.sizeThatFits(CGSize(width: 100, height: 50))
    }
    
}

