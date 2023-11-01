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
        view.addSubview(calcView.numberButtonsStack)
        view.addSubview(calcView.numberOneButtonsStack)
        view.addSubview(calcView.numberTwoButtonsStack)
        view.addSubview(calcView.numberThreeButtonsStack)
        view.addSubview(calcView.otherButtonsStack)
        
       // calcView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            calcView.viewNumberResult.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),            calcView.viewNumberResult.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.viewNumberResult.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.viewNumberResult.heightAnchor.constraint(equalToConstant: 100),

            calcView.label.topAnchor.constraint(equalTo: calcView.viewNumberResult.topAnchor, constant: 120),
            calcView.label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            calcView.label.widthAnchor.constraint(equalToConstant: 50),
            calcView.label.heightAnchor.constraint(equalToConstant: 50),
            
            calcView.numberButtonsStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: bottomStackHeightMultiplier),
            calcView.numberButtonsStack.topAnchor.constraint(equalTo:  calcView.viewNumberResult.bottomAnchor),
            calcView.numberButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
           calcView.numberButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            
            calcView.numberOneButtonsStack.topAnchor.constraint(equalTo: calcView.numberButtonsStack.bottomAnchor, constant: 1),
            calcView.numberOneButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberOneButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberOneButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            calcView.numberOneButtonsStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: bottomStackHeightMultiplier),
            
            calcView.numberTwoButtonsStack.topAnchor.constraint(equalTo: calcView.numberOneButtonsStack.bottomAnchor, constant: 1),
            calcView.numberTwoButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberTwoButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberTwoButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            calcView.numberTwoButtonsStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: bottomStackHeightMultiplier),
            
            calcView.numberThreeButtonsStack.topAnchor.constraint(equalTo: calcView.numberTwoButtonsStack.bottomAnchor, constant: 1),
            calcView.numberThreeButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.numberThreeButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.numberThreeButtonsStack.heightAnchor.constraint(equalToConstant: 170),
            calcView.numberThreeButtonsStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: bottomStackHeightMultiplier),
            
            calcView.otherButtonsStack.topAnchor.constraint(equalTo: calcView.numberThreeButtonsStack.bottomAnchor, constant: 1),
            calcView.otherButtonsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            calcView.otherButtonsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            calcView.otherButtonsStack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            calcView.otherButtonsStack.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: bottomStackHeightMultiplier)
        ])
    }

}

