//
//  ViewController.swift
//  UIKitWithoutStoryboard
//
//  Created by Abouzar Moradian on 9/4/24.
//

import UIKit

class FirstScreen: UIViewController {

    
    let nextButton = UIButton()
    let loginButton = UIButton()

    let parentView = UIView()
    
    let verticalStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupUI()
        setupAction()
    }
    
    func setupUI(){
        
        view.addSubview(parentView)
        
        parentView.addSubview(verticalStack)

        verticalStack.addArrangedSubview(nextButton)
        verticalStack.addArrangedSubview(loginButton)
        
        parentView.backgroundColor = .systemGray4
        parentView.translatesAutoresizingMaskIntoConstraints = false

        
        nextButton.configuration = .filled()
        nextButton.configuration?.baseBackgroundColor = .systemPink
        nextButton.configuration?.title = "Next"
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        loginButton.configuration = .filled()
        loginButton.configuration?.baseBackgroundColor = .systemPink
        loginButton.configuration?.title = "login"
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        verticalStack.axis = .vertical
        verticalStack.alignment = .fill
        verticalStack.distribution = .fillEqually
        verticalStack.spacing = 20
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            verticalStack.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            verticalStack.topAnchor.constraint(equalTo: parentView.topAnchor, constant: 30),
            verticalStack.widthAnchor.constraint(equalToConstant: 80),
            verticalStack.heightAnchor.constraint(equalToConstant: 100)
        ])


        
        NSLayoutConstraint.activate([
            parentView.widthAnchor.constraint(equalToConstant: 200),
            parentView.heightAnchor.constraint(equalToConstant: 200),
            parentView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            parentView.centerYAnchor.constraint(equalTo: view.centerYAnchor)

        ])
        
        
        
        
    }
    
    func setupAction(){
        
        nextButton.addTarget(self, action: #selector(nextTapAction), for: .touchUpInside)
    }
    
    @objc func nextTapAction(){
        
        //present(SecondViewController(), animated: true)
        let secondScreen = SecondViewController()
        navigationController?.pushViewController(secondScreen, animated: true)
    }


}

