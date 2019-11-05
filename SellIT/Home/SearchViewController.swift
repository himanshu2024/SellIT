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
    }
    override func viewDidAppear(_ animated: Bool) {
        searchBar.becomeFirstResponder()
    }
    
    //MARK:- UI configure methods
    func configureSearchBar() {
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.white.cgColor
        
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

//MARK:- table view datasource methods
extension SearchViewController : UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if indexPath.row == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentSearchTableViewCell", for: indexPath) as! RecentSearchTableViewCell
        return cell
//        }
//        else if indexPath.row == 1{
//
//            let cell = tableView.dequeueReusableCell(withIdentifier: "AssuredTableViewCell", for: indexPath) as! AssuredTableViewCell
//            return cell
//        }
//        else{
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TrendingTableViewCell", for: indexPath) as! TrendingTableViewCell
//            return cell
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //if indexPath.row == 0 || indexPath.row == 1{
        return 150
        //}
        
    }
    
    
}
