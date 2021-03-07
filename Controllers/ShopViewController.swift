//
//  TopRatedViewController.swift
//  GroceriesApp
//
//  Created by Ilya Buldin on 03.03.2021.
//

import UIKit

class ShopViewController: UIViewController {
    
    
    // MARK: - Properties
    var coordinator: Coordinator?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    

}

// MARK: - UI Setup
extension ShopViewController {
    private func setupUI() {

        
        self.view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        addNavBarImage()

        
    }
    
    
    private func addNavBarImage() {
        let image = #imageLiteral(resourceName: "Image")
        let imageView = UIImageView(image: image)
    
        navigationItem.titleView = imageView
        navigationItem.titleView?.frame = CGRect(x: 0, y: 0, width: 26.48, height: 30.8)
        navigationItem.titleView?.contentMode = .scaleAspectFit
        }
}


extension ShopViewController {

}
