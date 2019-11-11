//
//  MobileViewController.swift
//  SellIT
//
//  Created by Himanshu Chaurasiya on 11/11/19.
//  Copyright © 2019 MyTeam. All rights reserved.
//

import UIKit

class MobileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var imageView = UIImageView()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        self.title = "Mobile"
        navigationItem.largeTitleDisplayMode = .never
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        tableView.contentInset = UIEdgeInsets(top: 200, left: 0, bottom: 0, right: 0)
        
        tableView.dataSource = self
        setUpHeaderImageView()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
             //   setNeedsStatusBarAppearanceUpdate()

    }
    
    open override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    func setUpHeaderImageView() {
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 200)
        imageView.image = #imageLiteral(resourceName: "car_tmp")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = 200 - (scrollView.contentOffset.y + 200)
        let height = min(max(y, 100), 400)
        
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mobileCell", for: indexPath)
        cell.textLabel?.text = "kou"
        return cell
    }
    
}

extension UINavigationController {
   open override var preferredStatusBarStyle: UIStatusBarStyle {
    //return .lightContent
      return topViewController?.preferredStatusBarStyle ?? .default
   }
}

//extension UINavigationController {
//
//    override open var childForStatusBarStyle: UIViewController?{
//        return self.topViewController
//    }
//
//}
