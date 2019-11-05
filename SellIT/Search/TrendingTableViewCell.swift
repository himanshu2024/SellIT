//
//  TrendingTableViewCell.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 31/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

    @IBOutlet weak var tableViewCell: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        tableViewCell.delegate = self
        tableViewCell.dataSource = self
    }

}

extension TrendingTableViewCell : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrendingSearchTableViewCell", for: indexPath)
        return cell
    }
    
    
}
