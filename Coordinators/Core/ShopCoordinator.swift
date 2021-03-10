//
//  TopRatedCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 03.03.2021.
//

import UIKit


class ShopCoordinator: Coordinator {
    
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let shopViewController = ShopViewController()
        shopViewController.coordinator = self
        
        navigationController?.pushViewController(shopViewController, animated: false)
    }
    
}
