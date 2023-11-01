//
//  CustomStackView.swift
//  Calculator
//
//  Created by Liz-Mary on 28.10.2023.
//

import UIKit

class CustomStackView: UIStackView {
    
    init(axis: NSLayoutConstraint.Axis) {
        super.init(frame: .zero)
        self.axis = axis
        self.spacing = 1
        self.translatesAutoresizingMaskIntoConstraints = false
//        self.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 170, right: 0)
//        self.isLayoutMarginsRelativeArrangement = true
        self.distribution = .fillEqually
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
