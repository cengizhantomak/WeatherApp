//
//  HomeViewController.swift
//  WeatherApp
//
//  Created by Cengizhan Tomak on 5.05.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - Properties
    private let backgroundImageView = UIImageView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}

// MARK: - Helpers
extension HomeViewController {
    
    private func style() {
        
        // backgroundImageView style
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.image = UIImage(named: "background")
    }
    
    private func layout() {
        
        view.addSubview(backgroundImageView)
        NSLayoutConstraint.activate([
            
            // backgroundImageView layout
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: backgroundImageView.bottomAnchor)
        ])
    }
}
