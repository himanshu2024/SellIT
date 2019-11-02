//
//  ViewController.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 09/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureSearchBar()
        
        
       tableView.register(UINib(nibName: "CategoriesTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoriesTableViewCell")
        
        tableView.register(UINib(nibName: "AdsTableViewCell", bundle: nil), forCellReuseIdentifier: "AdsTableViewCell")
        
        tableView.register(UINib(nibName: "NewUpdatesTableViewCell", bundle: nil), forCellReuseIdentifier: "NewUpdatesTableViewCell")
        
        
    }
    
    func configureSearchBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchBar.delegate = self
        
        if let textField  = searchController.searchBar.value(forKey: "searchField") as? UITextField{
            textField.inputView = UIView()
        }
    }
    
    
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        performSegue(withIdentifier: "goToSearch", sender: self)
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdsTableViewCell", for: indexPath) as! AdsTableViewCell
            return cell
        }
        else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewUpdatesTableViewCell", for: indexPath) as! NewUpdatesTableViewCell
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoriesTableViewCell", for: indexPath) as! CategoriesTableViewCell
            
            cell.cellType = HomeCellType(rawValue: indexPath.row)
            if indexPath.row == 0{
                cell.label.isHidden = true
            }
            else{
                cell.label.text = "Home"
            }
            
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 0{
            return 210
        }
        if indexPath.row == 2{
            return 330
        }
        if indexPath.row == 3{
            return 240
        }
        return 240
    }
}

