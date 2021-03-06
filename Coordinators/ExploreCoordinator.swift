//
//  ExploreCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 06.03.2021.
//

import UIKit

class ExploreCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let exploreViewController = ExploreViewController()
        exploreViewController.coordinator = self
        
        navigationController?.pushViewController(exploreViewController, animated: false)
    }
    
}
