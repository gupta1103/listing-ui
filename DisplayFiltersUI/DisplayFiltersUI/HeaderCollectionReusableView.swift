//
//  HeaderCollectionReusableView.swift
//  DisplayFiltersUI
//
//  Created by Akanksha Gupta on 26/07/21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
            
    internal let headerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.sizeToFit()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(headerLabel)
        headerLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 16).isActive = true
        headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
