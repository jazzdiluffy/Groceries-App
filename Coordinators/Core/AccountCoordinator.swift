//
//  AccountCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 06.03.2021.
//

import UIKit

class AccountCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let accountViewController = ExploreViewController()
        accountViewController.coordinator = self
        
        navigationController?.pushViewController(accountViewController, animated: false)
    }
    
}
