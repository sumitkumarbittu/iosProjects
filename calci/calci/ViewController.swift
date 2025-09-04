//
//  ViewController.swift
//  calci
//
//  Created by GEU on 27/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Result: UILabel!
    @IBOutlet weak var field2: UITextField!
    @IBOutlet weak var field1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func add(_ sender: Any) {
        let a = Int(field1.text ?? "") ?? 0
        let b = Int(field2.text ?? "") ?? 0
        Result.text = "Result : " + String(a + b)
    }
    
    @IBAction func sub(_ sender: Any) {
        let a = Int(field1.text ?? "") ?? 0
        let b = Int(field2.text ?? "") ?? 0
        Result.text = "Result : " + String(a - b)
    }
    
    @IBAction func mul(_ sender: Any) {
        let a = Int(field1.text ?? "") ?? 0
        let b = Int(field2.text ?? "") ?? 0
        Result.text = "Result : " + String(a * b)
    }
    
    @IBAction func div(_ sender: Any) {
        let a = Double(field1.text ?? "") ?? 0
        let b = Double(field2.text ?? "") ?? 0
        Result.text = "Result : " + String(a / b)
    }
}

