//
//  SettingsCell.swift
//  iOSSettingsScreen
//
//  Created by Дима Кондратенко on 20.11.2025.
//

import UIKit

class SettingsCell: UITableViewCell {

    // MARK: - Outlets


    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    // MARK: - Setup

    private func setupHierarchy() {
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([

        ])
    }

    // MARK: - Reuse

}
