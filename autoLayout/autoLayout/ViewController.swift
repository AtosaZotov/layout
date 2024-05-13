//
//  ViewController.swift
//  00
//
//  Created by Atosa on 2/24/1403 AP.
//

import UIKit

class ViewController: UIViewController {
    
    
    let backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "chevron.left"), for: .normal)
        button.tintColor = .black // Customize as needed
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 0.3
        return button
    }()
    
    let questionButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "questionmark"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(questionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "smiley")
        imageView.tintColor = .systemPink
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderColor = UIColor.red.cgColor
        imageView.layer.borderWidth = 0.3
        return imageView
    }()
    let titleLabel: UILabel = {
        let title = UILabel()
        title.text = "yechizi"
        title.textColor = .black
        title.font = .systemFont(ofSize: 17)
        title.layer.borderColor = UIColor.red.cgColor
        title.layer.borderWidth = 0.3
        return title
    }()
    
    let createAccButton: UIButton = {
        let button1 = UIButton()
        button1.setTitle(" yechiziii", for: .normal)
        button1.backgroundColor = .red
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 10
        button1.addTarget(self, action: #selector(createAccButtonTapped), for: .touchUpInside)
        return button1
    }()
    
    let followUpButton: UIButton = {
        let button2 = UIButton()
        button2.setTitle("yechie dg ie", for: .normal)
        button2.backgroundColor = .white
        button2.layer.cornerRadius = 10
        button2.addTarget(self, action: #selector(followUpButtonTapped), for: .touchUpInside)
        return button2
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set up UI
        setupUI()
    }
    
    func setupUI() {
        
        // Create a vertical stack view
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        
        // Add subviews to the stack view
        stackView.addArrangedSubview(backButton)
        stackView.addArrangedSubview(logoImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(createAccButton)
        stackView.addArrangedSubview(followUpButton)
        stackView.addArrangedSubview(questionButton)
        stackView.addArrangedSubview(UIView())
        
        // Add the stack view to the main view
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints        = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 20)
        ])
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        /*
         // Constraints
         backButton.translatesAutoresizingMaskIntoConstraints       = false
         logoImageView.translatesAutoresizingMaskIntoConstraints    = false
         titleLabel.translatesAutoresizingMaskIntoConstraints       = false
         createAccButton.translatesAutoresizingMaskIntoConstraints  = false
         followUpButton.translatesAutoresizingMaskIntoConstraints   = false
         questionButton.translatesAutoresizingMaskIntoConstraints   = false
         
         NSLayoutConstraint.activate([
         
         stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
         stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         
         backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
         backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         
         questionButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
         questionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         
         logoImageView.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
         logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
         logoImageView.widthAnchor.constraint(equalToConstant: 200),
         
         titleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 20),
         titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         
         createAccButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
         createAccButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         createAccButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         createAccButton.heightAnchor.constraint(equalToConstant: 50),
         
         followUpButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
         followUpButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
         followUpButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
         followUpButton.heightAnchor.constraint(equalToConstant: 50)
         ])
         */
    }
    
    @objc func backButtonTapped() {
        // Handle back button action here
    }
    
    @objc func createAccButtonTapped() {
        // Handle createAcc button action here
    }
    
    @objc func followUpButtonTapped() {
        // Handle follow button action here
    }
    
    @objc func questionButtonTapped() {
        
    }
}

#Preview {
    ViewController()
}
