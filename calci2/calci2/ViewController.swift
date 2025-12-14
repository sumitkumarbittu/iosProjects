//
//  ViewController.swift
//  calci2
//
//  Created by Sumit on 14/12/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var m: UITextField!
    @IBOutlet weak var c: UITextField!
    @IBOutlet weak var p: UITextField!
    
    
    @IBAction func result(_ sender: Any) {

        // Read values safely
        let a = Double(m.text ?? "") ?? 0
        let b = Double(p.text ?? "") ?? 0
        let d = Double(c.text ?? "") ?? 0

        // Total marks
        let total = a + b + d

        // Percentage calculation
        let percentage = (total / 300) * 100

        // Display result (2 decimal places)
        answer.text = String(format: "Percentage : %.2f%%", percentage)
    }
    
}

