//
//  AdsTabsType.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 18/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
enum AdsTabsType : Int{
    case AdsTabCollectionViewCell = 0
    case AdsTabPageCollectionViewCell
    
    static let values = [AdsTabCollectionViewCell : "AdsTabCollectionViewCell",
                        AdsTabPageCollectionViewCell:"AdsTabPageCollectionViewCell"]
    
    public func stringValue() -> String {
        AdsTabsType.values[self] ?? ""
    }
    
}
