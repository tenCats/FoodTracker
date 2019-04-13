//
//  ViewController.swift
//  FoodTracker
//
//  Created by 刘陈佩 on 2019/4/6.
//  Copyright © 2019 刘陈佩. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    @IBOutlet weak var nameTexedField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through delegate callbacks
        nameTexedField.delegate = self
    }

    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder();
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }

    // MARK: Actions
    @IBAction func setDefaultTextLabel(_ sender: UIButton) {
        mealNameLabel.text = "Deafult Text"
    }
}

