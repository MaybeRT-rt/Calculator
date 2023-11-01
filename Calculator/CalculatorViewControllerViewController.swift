//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Liz-Mary on 28.10.2023.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    let calcView = CalculatorView()
    let bottomStackHeightMultiplier: CGFloat = 0.1

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }

    func setupUI() {
        //view.addSubview(calcView.label)
        view.addSubview(calcView.viewNumberResult)
        calcView.viewNumberResult.addSubview(calcView.label)
        view.addSubview(calcView.customStack)
        calcView.customStack.addSubview(calcView.numberButtonsStack)
        calcView.customStack.addSubview(calcView.numberOneButtonsStack)
        calcView.customStack.addSubview(calcView.numberTwoButtonsStack)
        calcView.customStack.addSubview(calcView.numberThreeButtonsStack)
        calcView.customStack.addSubview(calcView.otherButtonsStack)
        
       // calcView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            calcView.viewNumberResult.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),            calcView.viewNumberResult.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.viewNumberResult.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.viewNumberResult.heightAnchor.constraint(equalToConstant: 200),

            calcView.label.topAnchor.constraint(equalTo: calcView.viewNumberResult.centerYAnchor, constant: 10),
            calcView.label.trailingAnchor.constraint(equalTo: calcView.viewNumberResult.trailingAnchor, constant: -20),
            calcView.label.widthAnchor.constraint(equalToConstant: 50),
            calcView.label.heightAnchor.constraint(equalToConstant: 50),

            
            calcView.numberButtonsStack.topAnchor.constraint(equalTo:  calcView.viewNumberResult.bottomAnchor),
            calcView.numberButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            
            calcView.numberOneButtonsStack.topAnchor.constraint(equalTo: calcView.numberButtonsStack.bottomAnchor, constant: 1),
            calcView.numberOneButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberOneButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberOneButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            
            calcView.numberTwoButtonsStack.topAnchor.constraint(equalTo: calcView.numberOneButtonsStack.bottomAnchor, constant: 1),
            calcView.numberTwoButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberTwoButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberTwoButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            
            calcView.numberThreeButtonsStack.topAnchor.constraint(equalTo: calcView.numberTwoButtonsStack.bottomAnchor, constant: 1),
            calcView.numberThreeButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberThreeButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberThreeButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            
            calcView.otherButtonsStack.topAnchor.constraint(equalTo: calcView.numberThreeButtonsStack.bottomAnchor, constant: 1),
            calcView.otherButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.otherButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.otherButtonsStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

}

