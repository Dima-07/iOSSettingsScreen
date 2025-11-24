//
//  SettingsCell.swift
//  iOSSettingsScreen
//
//  Created by Дима Кондратенко on 20.11.2025.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    private var iconWidthConstraint: NSLayoutConstraint!
    private var iconHeightConstraint: NSLayoutConstraint!
    private var imageWidthLimitation: NSLayoutConstraint!
    private var imageHeightConstraint: NSLayoutConstraint!

    // MARK: - Outlets
    
    private let iconBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.preferredSymbolConfiguration = .init(pointSize: 14, weight: .regular)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17)
        label.numberOfLines = 0
        label.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let detailLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .secondaryLabel
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    
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
        contentView.addSubview(iconBackgroundView)
        iconBackgroundView.addSubview(iconImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(detailLabel)
    }

    private func setupLayout() {
        
        iconWidthConstraint = iconBackgroundView.widthAnchor.constraint(equalToConstant: 30)
        iconHeightConstraint = iconBackgroundView.heightAnchor.constraint(equalToConstant: 30)
        imageWidthLimitation = iconImageView.widthAnchor.constraint(equalToConstant: 20)
        imageHeightConstraint = iconImageView.heightAnchor.constraint(equalToConstant: 20)
        
        NSLayoutConstraint.activate([
            iconBackgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            iconBackgroundView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconWidthConstraint,
            iconHeightConstraint,
            
            iconImageView.centerYAnchor.constraint(equalTo: iconBackgroundView.centerYAnchor),
            iconImageView.centerXAnchor.constraint(equalTo: iconBackgroundView.centerXAnchor),
            imageWidthLimitation,
            imageHeightConstraint,
            
            titleLabel.leadingAnchor.constraint(equalTo: iconBackgroundView.trailingAnchor, constant: 12),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            detailLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 8),
            detailLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            detailLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }

    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        iconWidthConstraint.constant = 30
        iconHeightConstraint.constant = 30
        imageWidthLimitation.constant = 20
        imageHeightConstraint.constant = 20
        iconBackgroundView.layer.cornerRadius = 8
        iconImageView.contentMode = .scaleAspectFit
        
        titleLabel.font = .systemFont(ofSize: 17)
        detailLabel.isHidden = true
        
        accessoryType = .none
        accessoryView = nil
    }
    
    func configure( with item: SettingsModel) {
        iconBackgroundView.backgroundColor = item.backgroundColor
        iconImageView.image = item.icon
        titleLabel.text = item.title
        detailLabel.text = item.detailText
        detailLabel.isHidden = item.detailText == nil
        
        if item.firstCell {
            iconWidthConstraint.constant = 60
            iconHeightConstraint.constant = 60
            imageWidthLimitation.constant = 60
            imageHeightConstraint.constant = 60
            iconBackgroundView.layer.cornerRadius = 30
            iconImageView.contentMode = .scaleAspectFill
            titleLabel.font = .systemFont(ofSize: 18, weight: .bold)
        }
    }
}
