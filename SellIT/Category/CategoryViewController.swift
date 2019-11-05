//
//  CategoryViewController.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 03/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    @IBOutlet weak var parentTableView: UITableView!
    
    @IBOutlet weak var childTableView: UITableView!
    
    var selectedCategory : Category?{
        didSet{
            childTableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        parentTableView.dataSource = self
        parentTableView.delegate = self
        parentTableView.selectRow(at: IndexPath(item: 0, section: 0), animated: true, scrollPosition: .none)
        selectedCategory = Data.categoriesArray[0]
        // Do any additional setup after loading the view.
        childTableView.delegate = self
        childTableView.dataSource = self
    }
    
}

extension CategoryViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == parentTableView{
            return Data.categoriesArray.count
        }
        return selectedCategory?.subCategory.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == parentTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ParentCategoryTableViewCell", for: indexPath) as! ParentCategoryTableViewCell
            cell.category = Data.categoriesArray[indexPath.row]
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ChildTableViewCell", for: indexPath)
            cell.textLabel?.text = selectedCategory?.subCategory[indexPath.row]
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == parentTableView{
            tableView.selectRow(at: indexPath, animated: true, scrollPosition: .top)
            selectedCategory = Data.categoriesArray[indexPath.row]
        }
        else{
            //print(tmpData[selectedIndex!]![indexPath.row])
        }
    }
    
    
}
