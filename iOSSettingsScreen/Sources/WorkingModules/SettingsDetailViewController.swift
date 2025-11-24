//
//  SettingsDetailViewController.swift
//  iOSSettingsScreen
//
//  Created by Дима Кондратенко on 20.11.2025.
//

import UIKit

class SettingsDetailViewController: UIViewController {
    
    var settingsModel: SettingsModel?

    // MARK: - Outlets
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
        fillSettings()
    }

    // MARK: - Setup

    private func setupHierarchy() {
        view.addSubview(iconImageView)
        view.addSubview(titleLabel)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            iconImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            iconImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            iconImageView.widthAnchor.constraint(equalToConstant: 50),
            iconImageView.heightAnchor.constraint(equalToConstant: 50),
            
            titleLabel.topAnchor.constraint(equalTo: iconImageView.bottomAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    private func fillSettings() {
        guard let model = settingsModel else { return }
        
        iconImageView.image = model.icon
        titleLabel.text = model.title
        
        iconImageView.backgroundColor = model.backgroundColor
        iconImageView.layer.cornerRadius = 10
        iconImageView.clipsToBounds = true
    }
}
