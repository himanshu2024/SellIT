//
//  SearchViewController.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 24/10/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var quickTableView: UITableView!
    
    var recentSearchCellData : (height:Float,labelArray:[UIButton]) = (0,[])
    
    //MARK:- life cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
        configureQuickTableView()
    }
    override func viewWillAppear(_ animated: Bool) {
        headerView.layer.shadowOffset = CGSize(width: 0, height: 3)
        headerView.layer.shadowRadius = 2
        headerView.layer.shadowOpacity = 0.1
        
        recentSearchCellData = RecentSearchBrain().getRecentSearchItemData()
    }
    override func viewDidAppear(_ animated: Bool) {
        searchBar.becomeFirstResponder()
    }
    
    //MARK:- UI configure methods
    func configureSearchBar() {
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.white.cgColor
        searchBar.delegate = self
        if let textField  = searchBar.value(forKey: "searchField") as? UITextField{
            textField.leftViewMode = .never
            
        }
        
        
        
    }
    func configureQuickTableView() {
        quickTableView.delegate = self
        quickTableView.dataSource = self
        
       
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension SearchViewController : UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text{
            RecentSearchBrain().saveRecentSearch(searchItem: text)
            recentSearchCellData = RecentSearchBrain().getRecentSearchItemData()
            quickTableView.reloadData()
        }
        searchBar.resignFirstResponder()
    }
}

//MARK:- table view datasource methods
extension SearchViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentSearchTableViewCell", for: indexPath) as! RecentSearchTableViewCell
            cell.searchedItem = recentSearchCellData.labelArray
        return cell
        }
        else if indexPath.row == 1{

            let cell = tableView.dequeueReusableCell(withIdentifier: "AssuredTableViewCell", for: indexPath) as! AssuredTableViewCell
            return cell
        }
        else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrendingSearchesID", for: indexPath)
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TrendingSearchesItemID", for: indexPath)
            cell.textLabel?.text = "traid 1"
            
            cell.imageView?.image = UIImage(systemName: "pencil.circle")
            cell.imageView?.tintColor = .black
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            
            return CGFloat(recentSearchCellData.height)
        }
        if indexPath.row == 1{
            return 150
        }
        else{
            return 54
        }
        
    }
    
    
}
