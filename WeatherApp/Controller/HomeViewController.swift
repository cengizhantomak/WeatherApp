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
    private let locationButton = UIButton(type: .system)
    private let searchTextField = UITextField()
    private let searchButton = UIButton(type: .system)
    
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
        
        // locationButton style
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        locationButton.tintColor = .label
        locationButton.layer.cornerRadius = 40 / 2
        locationButton.contentVerticalAlignment = .fill
        locationButton.contentHorizontalAlignment = .fill
        
        // searchButton style
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.layer.cornerRadius = 40 / 2
        searchButton.tintColor = .label
        searchButton.contentVerticalAlignment = .fill
        searchButton.contentHorizontalAlignment = .fill
        
        //searchTextField style
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.placeholder = "Search"
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.borderStyle = .roundedRect
        searchTextField.textAlignment = .right
        searchTextField.backgroundColor = .systemFill
    }
    
    private func layout() {
        
        view.addSubview(backgroundImageView)
        view.addSubview(locationButton)
        view.addSubview(searchButton)
        view.addSubview(searchTextField)
        NSLayoutConstraint.activate([
            
            // backgroundImageView layout
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: backgroundImageView.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: backgroundImageView.bottomAnchor),
            
            // locationButton layout
            locationButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            locationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            
            // searchButton layout
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            //searchButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            view.trailingAnchor.constraint(equalTo: searchButton.trailingAnchor, constant: 8),
            
            //searchTextField layout
            searchTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            searchTextField.leadingAnchor.constraint(equalTo: locationButton.trailingAnchor, constant: 4),
            //searchTextField.trailingAnchor.constraint(equalTo: searchButton.leadingAnchor, constant: -4)
            searchButton.leadingAnchor.constraint(equalTo: searchTextField.trailingAnchor, constant: 4)
        ])
    }
}
