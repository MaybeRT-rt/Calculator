//
//  CalculatorView.swift
//  Calculator
//
//  Created by Liz-Mary on 28.10.2023.
//


import UIKit

class CalculatorView: UIView {
    
    let customStack = CustomStackView(axis: .vertical)
    
    let viewNumberResult: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 32)
        label.textColor = .white
        label.text = "0"
        return label
    }()
    
    let viewNumber: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    let buttonsStack: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.distribution = .fillEqually
//        return stack
//    }()
    
    let numberButtonsStack = CustomStackView(axis: .horizontal)
    let numberOneButtonsStack = CustomStackView(axis: .horizontal)
    let numberTwoButtonsStack = CustomStackView(axis: .horizontal)
    let numberThreeButtonsStack = CustomStackView(axis: .horizontal)
    let otherButtonsStack = CustomStackView(axis: .horizontal)
    
    
    init() {
        super.init(frame: .zero)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupUI() {
        addSubview(customStack)

        addRowToStack(stackView: numberButtonsStack, buttons: ["AC", "+/-", "%", "÷"])
        addRowToStack(stackView: numberOneButtonsStack, buttons: ["7", "8", "9", "x"])
        addRowToStack(stackView: numberTwoButtonsStack, buttons: ["4", "5", "6", "-"])
        addRowToStack(stackView: numberThreeButtonsStack, buttons: ["3", "2", "1", "+"])
        addRowToStack(stackView: otherButtonsStack, buttons: ["0", ".", "="])
        
        customStack.addArrangedSubview(numberButtonsStack)
        customStack.addArrangedSubview(numberOneButtonsStack)
        customStack.addArrangedSubview(numberTwoButtonsStack)
        customStack.addArrangedSubview(numberThreeButtonsStack)
        customStack.addArrangedSubview(otherButtonsStack)

        addSubview(viewNumberResult)
        viewNumberResult.addSubview(label)
      

    }
    
    func addRowToStack(stackView: UIStackView, buttons: [String]) {
        let rowStack = CustomStackView(axis: .horizontal)
        for buttonTitle in buttons {
            rowStack.addArrangedSubview(createButton(title: buttonTitle))
        }
        stackView.addArrangedSubview(rowStack)
    }
    
    func createButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.backgroundColor = .clear
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        if title == "=" {
            button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        }
        return button
    }


    
    @objc func buttonTapped() {
        
    }
    
}
