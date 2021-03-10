//
//  ExploreViewController.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 06.03.2021.
//

import UIKit

class ExploreViewController: UIViewController {
    // MARK: - Properties
    var coordinator: Coordinator?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
}

// MARK: - UI Setup
extension ExploreViewController {
    private func setupUI() {
        if #available(iOS 13.0, *) {
            overrideUserInterfaceStyle = .light
        }
        
        self.view.backgroundColor = .white
        
    }
}
