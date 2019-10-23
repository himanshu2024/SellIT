//
//  TabPageType.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 23/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
enum TabPageType : Int {
    case CarCollectionViewCell
    case JobCollectionViewCell
    
    static let values = [CarCollectionViewCell : "CarCollectionViewCell",
                        JobCollectionViewCell:"JobCollectionViewCell"]
    
    public func stringValue() -> String {
        TabPageType.values[self] ?? ""
    }
}
