//
//  Utils.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 06/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import Foundation
class Utils {
    func saveRecentSearch(searchString : String) {
        let preferences = UserDefaults.standard
        let currentLevel = "hi"
        let currentLevelKey = "currentLevel"
        preferences.set(currentLevel, forKey: currentLevelKey)
    }
    
    func saveRecentSearch(searchString : String) {
        let preferences = UserDefaults.standard

        let currentLevelKey = "currentLevel"
        if preferences.object(forKey: currentLevelKey) == nil {
            //  Doesn't exist
        } else {
            let currentLevel = preferences.integer(forKey: currentLevelKey)
        }
    }
}
