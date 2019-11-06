//
//  CustomButton.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 06/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

extension UIButton {
    func customSearchButton(title : String) {
        setTitle(title, for: .normal)
        setTitleColor(.black, for: .normal)//.titleLabel!.textColor = .black
        setTitleColor(.lightGray, for: .selected)
        
        titleLabel!.font = titleLabel!.font.withSize(13)
        
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 0.5
        layer.cornerRadius = 5
    }
}
