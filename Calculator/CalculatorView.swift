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
        label.font = UIFont.systemFont(ofSize: 40)
        label.textColor = .white
        label.text = "0"
        return label
    }()
    
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
        addSubview(viewNumberResult)
        viewNumberResult.addSubview(label)
        
        addRowToStack(stackView: numberButtonsStack, buttons: ["AC", "+/-", "%", "÷"])
        addRowToStack(stackView: numberOneButtonsStack, buttons: ["7", "8", "9", "x"])
        addRowToStack(stackView: numberTwoButtonsStack, buttons: ["4", "5", "6", "-"])
        addRowToStack(stackView: numberThreeButtonsStack, buttons: ["3", "2", "1", "+"])
        
        let zeroButton = createButton(title: "0")
        otherButtonsStack.addArrangedSubview(zeroButton)
        
        addRowToStack(stackView: otherButtonsStack, buttons: [ ".", "="])
        
        customStack.addArrangedSubview(numberButtonsStack)
        customStack.addArrangedSubview(numberOneButtonsStack)
        customStack.addArrangedSubview(numberTwoButtonsStack)
        customStack.addArrangedSubview(numberThreeButtonsStack)
        customStack.addArrangedSubview(otherButtonsStack)
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
        button.backgroundColor = getColor(for: title)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 28)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    
        return button
    }
    
    func getColor(for name: String) -> UIColor {
        if name == "÷" || name == "x" || name == "-" || name == "+" || name == "=" {
                return .orange
        } else if  name == "AC" || name == "+/-" || name == "%" {
            return .brown
        } else {
            return .lightGray
        }
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        print(sender.currentTitle)
    }
    
}

