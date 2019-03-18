//
//  ViewController.swift
//  UserDefaultsTest
//
//  Created by Aleksandra Konopka on 18/03/2019.
//  Copyright © 2019 Aleksandra Konopka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendButtonPressed(_ sender: UIButton) {
        if textField.text!.count > 0
        {
       defaults.set(textField.text, forKey: "Tekst")
        }
    }
    
    @IBAction func loadButtonPressed(_ sender: UIButton) {
        label.text = "Stored in userDefaults: \(defaults.string(forKey: "Tekst") ?? "-")"
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        defaults.removeObject(forKey: "Tekst")
        label.text = "Stored in userDefaults: -"
    }
}

