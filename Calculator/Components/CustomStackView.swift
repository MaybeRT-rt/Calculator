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
        self.spacing = 8
        self.distribution = .fillEqually
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
