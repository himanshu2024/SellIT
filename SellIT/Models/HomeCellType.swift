//
//  HomeCellType.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 15/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
import UIKit

enum HomeCellType : Int{
    case CategoryItemCellCollectionViewCell = 0
    case AssuredCollectionViewCell
    
    static let values = [CategoryItemCellCollectionViewCell : "CategoryItemCellCollectionViewCell",
                        AssuredCollectionViewCell:"AssuredCollectionViewCell"]
    
    public func stringValue() -> String {
        HomeCellType.values[self] ?? ""
    }
    
}
