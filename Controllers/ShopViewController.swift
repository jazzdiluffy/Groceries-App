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
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(
            frame: .zero,
            collectionViewLayout: collectionViewLayout())
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
        collectionView.backgroundColor = .green
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    
    
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
        self.view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            collectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 248.51)

        ])
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
    
    
    private func collectionViewLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewFlowLayout()
        let cellWidthHeightConstant: CGFloat = 248.51
        
        layout.sectionInset = UIEdgeInsets(top: 0,
                                           left: 10,
                                           bottom: 0,
                                           right: 10)
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 15.07
        layout.minimumLineSpacing = 0
        layout.itemSize = CGSize(
            width: cellWidthHeightConstant,
            height: cellWidthHeightConstant)
        
        return layout
    }
}


extension ShopViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! CollectionViewCell
        return cell
    }
    
    
}


class CollectionViewCell: UICollectionViewCell {
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        setupUI()
    }
    
    // MARK: - Properties
    lazy var roundedBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.systemGray.cgColor
        view.layer.borderWidth = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        label.textColor = .systemBlue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
}


extension CollectionViewCell {
    private func setupUI() {
    self.contentView.addSubview(roundedBackgroundView)
    roundedBackgroundView.addSubview(titleLabel)

    NSLayoutConstraint.activate([
        roundedBackgroundView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 5),
        roundedBackgroundView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -5),
        roundedBackgroundView.leftAnchor.constraint(equalTo: self.contentView.leftAnchor, constant: 5),
        roundedBackgroundView.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -5),
        titleLabel.centerXAnchor.constraint(equalTo: roundedBackgroundView.centerXAnchor),
        titleLabel.centerYAnchor.constraint(equalTo: roundedBackgroundView.centerYAnchor)
    ])

    }
}
