//
//  MainViewController.swift
//  SimpleTips
//
//  Created by Orlando Vargas on 9/15/20.
//  Copyright © 2020 Orlando Vargas. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let banner = UIView()
    let totalLabel = OVTitleLabel(textAlignment: .center, fontSize: 24)
    let totalTextField = OVTextField(placeholder: "Hi")

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        configureTotalLabel()
    }
    
    private func configure() {
        view.backgroundColor = .systemBackground
        view.addSubview(banner)
        
        banner.translatesAutoresizingMaskIntoConstraints = false
        banner.backgroundColor = .systemRed
        
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: view.topAnchor),
            banner.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            banner.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            banner.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    private func configureTotalLabel() {
        view.addSubview(totalLabel)
        view.addSubview(totalTextField)
        
        totalLabel.text = "Total: "
        
        NSLayoutConstraint.activate([
            totalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            totalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            totalLabel.widthAnchor.constraint(equalToConstant: 100),
            totalLabel.heightAnchor.constraint(equalToConstant: 40),
            totalTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            totalTextField.leadingAnchor.constraint(equalTo: totalLabel.trailingAnchor),
            totalTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            totalTextField.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
