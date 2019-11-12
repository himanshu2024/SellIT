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
    let totalWidthSpace = Double(UIScreen.main.bounds.width - 32)
    
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
    
    
    func getRecentSearchItemData() -> (height : Float, labelArray : [UIButton]) {
        var yPos : Double = 16
        var xPos : Double = 0
        
        var labelArray = [UIButton]()
        
        let itemArray = getRecentSearch()
        
        guard itemArray.count > 0 else {
            return (0,[])
        }
        
        for itemIndex in 0..<itemArray.count{
            let item = itemArray[itemIndex]
            let buttonItem = UIButton()
            buttonItem.customSearchButton(title: item)
            let labelCGSize = buttonItem.titleLabel!.sizeThatFits(CGSize())
            
            buttonItem.frame = CGRect( x:xPos, y:yPos, width:(Double(labelCGSize.width) > totalWidthSpace ? totalWidthSpace : Double(labelCGSize.width+16)), height: Double(labelCGSize.height+16))
            
            labelArray.append(buttonItem)
            
            var txt : String? = nil
            if itemIndex < itemArray.count-1{
                txt = itemArray[itemIndex+1]
            }
            
            (xPos, yPos) = getNextPoint(currentXPos: xPos, currentYPos: yPos, currentViewWidth: Double(buttonItem.frame.width), currentViewHeight: Double(buttonItem.frame.height), nextText: txt)
        }
        
        return (Float(yPos + 80), labelArray)
        
    }
    
    func getLabel(text : String) -> CGSize {
        let newLabel = UIButton()
        newLabel.setTitle(text, for: .normal)
        return newLabel.sizeThatFits(CGSize())
    }
    
    func getNextPoint(currentXPos : Double, currentYPos : Double, currentViewWidth : Double, currentViewHeight : Double, nextText : String?) -> (x:Double,y:Double) {
        var xPos = currentXPos + currentViewWidth + 16
        var yPos = currentYPos
        var xPosComparetor = xPos
        
        if let text = nextText{
            let tmpLabel1 = getLabel(text: text)
            xPosComparetor += Double(tmpLabel1.width)
        }
        
        if xPosComparetor > totalWidthSpace{
            xPos = 0
            yPos += currentViewHeight + 16
        }
        
        return (xPos,yPos)
    }
    
}

