//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Liz-Mary on 28.10.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let calcView = CalculatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }

    func setupUI() {
        view.addSubview(calcView)
        view.addSubview(calcView.numberButtonsStack)
        view.addSubview(calcView.numberOneButtonsStack)
        view.addSubview(calcView.numberTwoButtonsStack)
        view.addSubview(calcView.numberThreeButtonsStack)
        view.addSubview(calcView.otherButtonsStack)
        
        calcView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            calcView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calcView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            calcView.viewNumberResult.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calcView.viewNumberResult.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.viewNumberResult.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //calcView.viewNumberResult.widthAnchor.constraint(equalToConstant: 100),
            calcView.viewNumberResult.heightAnchor.constraint(equalToConstant: 120),
            calcView.viewNumberResult.bottomAnchor.constraint(equalTo: calcView.customStack.topAnchor),
            
            calcView.label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            calcView.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            calcView.label.bottomAnchor.constraint(equalTo:  calcView.viewNumberResult.bottomAnchor, constant: 20),
            
            calcView.customStack.topAnchor.constraint(equalTo: calcView.viewNumberResult.bottomAnchor, constant: 0),
            calcView.customStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.customStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.customStack.bottomAnchor.constraint(equalTo:  view.bottomAnchor),
            
            calcView.numberButtonsStack.topAnchor.constraint(equalTo: calcView.viewNumberResult.bottomAnchor, constant: 1),
            calcView.numberButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberButtonsStack.bottomAnchor.constraint(equalTo: calcView.numberOneButtonsStack.topAnchor, constant: 8),
            calcView.numberButtonsStack.heightAnchor.constraint(equalToConstant: 100),
            
            calcView.numberOneButtonsStack.topAnchor.constraint(equalTo: calcView.numberButtonsStack.bottomAnchor, constant: 1),
            calcView.numberOneButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberOneButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberOneButtonsStack.bottomAnchor.constraint(equalTo: calcView.numberTwoButtonsStack.topAnchor, constant: 8),
            calcView.numberOneButtonsStack.heightAnchor.constraint(equalToConstant: 100),
            
            calcView.numberTwoButtonsStack.topAnchor.constraint(equalTo: calcView.numberOneButtonsStack.bottomAnchor, constant: 1),
            calcView.numberTwoButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberTwoButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberTwoButtonsStack.bottomAnchor.constraint(equalTo: calcView.numberThreeButtonsStack.topAnchor, constant: 8),
            calcView.numberTwoButtonsStack.heightAnchor.constraint(equalToConstant: 100),

            calcView.numberThreeButtonsStack.topAnchor.constraint(equalTo: calcView.numberTwoButtonsStack.bottomAnchor, constant: 1),
            calcView.numberThreeButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberThreeButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberThreeButtonsStack.bottomAnchor.constraint(equalTo: calcView.otherButtonsStack.topAnchor, constant: 8),
            calcView.numberThreeButtonsStack.heightAnchor.constraint(equalToConstant: 100),

            calcView.otherButtonsStack.topAnchor.constraint(equalTo: calcView.numberThreeButtonsStack.bottomAnchor, constant: 1),
            calcView.otherButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.otherButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.otherButtonsStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            calcView.otherButtonsStack.heightAnchor.constraint(equalToConstant: 100)

        ])
    }
}

