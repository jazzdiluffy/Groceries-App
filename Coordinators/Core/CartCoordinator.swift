//
//  CartCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 06.03.2021.
//

import UIKit

class CartCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let cartViewController = ExploreViewController()
        cartViewController.coordinator = self
        
        navigationController?.pushViewController(cartViewController, animated: false)
    }
    
}
