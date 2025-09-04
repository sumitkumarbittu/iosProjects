//
//  ViewController.swift
//  InterestCalc
//
//  Created by Sumit on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var interest: UILabel!
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var rate: UITextField!
    @IBOutlet weak var principal: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func simpleInterest(_ sender: Any) {
        let p = Double(principal.text ?? "") ?? 0
        let r = Double(rate.text ?? "") ?? 0
        let t = Double(time.text ?? "") ?? 0
        interest.text = "s.i. : " + String(p*r*t/100)
    }
    
    @IBAction func compounInterest(_ sender: Any) {
        let p = Double(principal.text ?? "") ?? 0
        let r = Double(rate.text ?? "") ?? 0
        let t = Double(time.text ?? "") ?? 0
        let a = (p * pow(1 + (r / 100), t)) - p
        interest.text = "c.i. : " + String(a)
    }
    
}

