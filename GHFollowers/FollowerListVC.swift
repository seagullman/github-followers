//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Brad Siegel on 2/20/24.
//

import UIKit

class FollowerListVC: UIViewController {
    
    public var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
