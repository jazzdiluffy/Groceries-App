//
//  TabBarCoordinator.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 03.03.2021.
//

import UIKit

class TabBarCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = TabBarController()
        tabBarController.coordinator = self

        let shopNavigationController = UINavigationController()
        shopNavigationController.tabBarItem = UITabBarItem(title: "Shop", image: #imageLiteral(resourceName: "shop"), tag: 0)
        let shopCoordinator = ShopCoordinator(navigationController: shopNavigationController)
        
        let exploreNavigationController = UINavigationController()
        exploreNavigationController.tabBarItem = UITabBarItem(title: "Explore", image: #imageLiteral(resourceName: "explore"), tag: 1)
        let exploreCoordinator = ExploreCoordinator(navigationController: exploreNavigationController)
        
        let cartNavigationController = UINavigationController()
        cartNavigationController.tabBarItem = UITabBarItem(title: "Cart", image: #imageLiteral(resourceName: "cart"), tag: 2)
        let cartCoordinator = CartCoordinator(navigationController: cartNavigationController)
        
        let favouriteNavigationController = UINavigationController()
        favouriteNavigationController.tabBarItem = UITabBarItem(title: "Favourite", image: #imageLiteral(resourceName: "favourite"), tag: 3)
        let favouriteCoordinator = FavouriteCoordinator(navigationController: favouriteNavigationController)

        let accountNavigationController = UINavigationController()
        accountNavigationController.tabBarItem = UITabBarItem(title: "Account", image: #imageLiteral(resourceName: "account"), tag: 4)
        let accountCoordinator = AccountCoordinator(navigationController: accountNavigationController)
        
        
        tabBarController.tabBar.tintColor = UIColor(rgb: 0x53B175, alphaVal: 1.0)
        tabBarController.tabBar.unselectedItemTintColor = .black
        tabBarController.viewControllers = [shopNavigationController, exploreNavigationController, cartNavigationController, favouriteNavigationController, accountNavigationController]

        tabBarController.modalPresentationStyle = .fullScreen
        navigationController.present(tabBarController, animated: true, completion: nil)

        coordinate(to: shopCoordinator)
        coordinate(to: exploreCoordinator)
        coordinate(to: cartCoordinator)
        coordinate(to: favouriteCoordinator)
        coordinate(to: accountCoordinator)
    }

}
