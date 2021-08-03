//
//  FiltersCollectionViewCell.swift
//  DisplayFiltersUI
//
//  Created by Akanksha Gupta on 26/07/21.


import UIKit

class FiltersCollectionViewCell: UICollectionViewCell {
    
    internal lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    internal lazy var categoryNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    internal lazy var radioImageView: UIImageView = {
        let radioButtonView = UIImageView()
        radioButtonView.translatesAutoresizingMaskIntoConstraints = false
        radioButtonView.image = UIImage(named: "ic_address_checkbox_off")
        return radioButtonView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        styleView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FiltersCollectionViewCell {
    
    private func styleView() {
        
        contentView.addSubview(containerView)
        NSLayoutConstraint.activate([

            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        containerView.addSubview(radioImageView)
        NSLayoutConstraint.activate([

            radioImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            radioImageView.widthAnchor.constraint(equalToConstant: 24),
            radioImageView.heightAnchor.constraint(equalToConstant: 24),
            radioImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
        containerView.addSubview(categoryNameLabel)
        NSLayoutConstraint.activate([
            
            categoryNameLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
            categoryNameLabel.leadingAnchor.constraint(equalTo: radioImageView.trailingAnchor, constant: 8),
            categoryNameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8)
            
        ])
    }
    
    public func configure(categoryName: String?, isSelected: Bool = false) {
        categoryNameLabel.text = categoryName
        if isSelected {
            radioImageView.image = UIImage(named: "ic_address_checkbox_on")
        } else {
            radioImageView.image = UIImage(named: "ic_address_checkbox_off")
        }
    }
}

