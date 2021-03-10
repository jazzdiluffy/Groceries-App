//
//  TabBarController.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 03.03.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    // MARK: - Properties
    var coordinator: TabBarCoordinator?
    
    let customTabBarView:UIView = {
        
        let view = UIView(frame: .zero)
        
        // to make the cornerRadius of coustmeTabBarView
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
        
        // to make the shadow of coustmeTabBarView
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor(rgb: 0x555E58, alphaVal: 1.0).cgColor
        view.layer.shadowOffset = CGSize(width: 2.0, height: -5.0)
        view.layer.shadowOpacity = 0.09
        view.layer.shadowRadius = 15.0
        return view
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarControllerUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        customTabBarView.frame = tabBar.frame
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var newSafeArea = UIEdgeInsets()
        newSafeArea.bottom += customTabBarView.bounds.size.height
        self.children.forEach({$0.additionalSafeAreaInsets = newSafeArea})
    }
    
}

// MARK: - UI Setup
extension TabBarController {
    private func addCustomTabBarView() {
        customTabBarView.frame = tabBar.frame
        view.addSubview(customTabBarView)
        view.bringSubviewToFront(self.tabBar)
    }
    
    private func hideTabBarBorder()  {
        let tabBar = self.tabBar
        tabBar.backgroundImage = UIImage.from(color: .clear)
        tabBar.shadowImage = UIImage()
        tabBar.clipsToBounds = true
        
    }
    
    private func setupTabBarControllerUI() {
        addCustomTabBarView()
        hideTabBarBorder()
    }
}
