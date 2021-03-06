//
//  FavouriteCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 06.03.2021.
//

import UIKit

class FavouriteCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let favouriteViewController = ExploreViewController()
        favouriteViewController.coordinator = self
        
        navigationController?.pushViewController(favouriteViewController, animated: false)
    }
    
}
