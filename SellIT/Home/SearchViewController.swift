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
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSearchBar()
    }
    override func viewWillAppear(_ animated: Bool) {
        headerView.layer.shadowOffset = CGSize(width: 0, height: 3)
        headerView.layer.shadowRadius = 2
        headerView.layer.shadowOpacity = 0.1
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        searchBar.becomeFirstResponder()
        
    }
    
    func configureSearchBar() {
        searchBar.layer.borderWidth = 1
        searchBar.layer.borderColor = UIColor.white.cgColor
        
        if let textField  = searchBar.value(forKey: "searchField") as? UITextField{
            textField.leftViewMode = .never
        }
    }
    
    @IBAction func backButtonClicked(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
