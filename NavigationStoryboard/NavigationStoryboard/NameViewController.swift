//
//  NameViewController.swift
//  NavigationStoryboard
//
//  Created by Toheed Jahan Khan on 23/12/22.
//

import UIKit

class NameViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var fullName: String?
    
    override func viewDidLoad() {
        guard let name = fullName else { return }
        
        let namesArr = name.components(separatedBy: " ")
        
        self.firstNameTextField.text = namesArr.first
        self.lastNameTextField.text = namesArr.last
    }
}
