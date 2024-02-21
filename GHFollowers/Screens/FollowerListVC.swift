//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Brad Siegel on 2/20/24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    public var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, error in
            guard let followers else {
                self.presentGFAlertOnMainThread(title: "Bad stuff happened", message: error!.rawValue, buttonTitle: "Ok")
                return
            }
            
            print("***** followers: \(String(describing: followers.count))")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
