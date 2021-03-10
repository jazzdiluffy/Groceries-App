//
//  AppCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 03.03.2021.
//

import UIKit

protocol Coordinator {
    func start()
    func coordinate(to coordinator: Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}


class AppCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
        
        coordinate(to: tabBarCoordinator)
    }
}


