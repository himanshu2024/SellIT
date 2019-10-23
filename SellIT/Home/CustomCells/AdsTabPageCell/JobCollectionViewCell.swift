//
//  JobCollectionViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 22/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class JobCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var parentView: UIView!
    @IBOutlet weak var jobTypeLabel: CustomLabel!
    @IBOutlet weak var jobTitleLabel: UILabel!
    
    @IBOutlet weak var companyLabel: UILabel!
    
    @IBOutlet weak var placeLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    var jobItem : Job?{
        didSet{
            if let name = jobItem?.name, let type = jobItem?.type, let company = jobItem?.company, let place = jobItem?.place, let salary = jobItem?.salaryRange{
                jobTypeLabel.text = type
                jobTitleLabel.text = name
                companyLabel.text = company
                placeLabel.text = place
                salaryLabel.text = salary
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        parentView.layer.cornerRadius = 8
    }

}
