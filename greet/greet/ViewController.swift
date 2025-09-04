//
//  ViewController.swift
//  greet
//
//  Created by GEU on 25/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func greetButton(_ sender: Any) {
        greetingLabel.text = "Hello, \(nameField.text ?? "")!"
    }
    
}

