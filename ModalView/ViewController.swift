//
//  ViewController.swift
//  ModalView
//
//  Created by Вячеслав Квашнин on 30.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonPresentationController: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Presentation Controller", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        buttonPresentationController.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        view.addSubview(buttonPresentationController)
        
        buttonPresentationController.center = view.center
    }
    
    @objc
    func tapButton() {
        let presentationVC = PresentationController()
        presentationVC.modalTransitionStyle = .coverVertical
        presentationVC.modalPresentationStyle = .formSheet
        present(presentationVC, animated: true)
    }
}

