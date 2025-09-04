//
//  ViewController.swift
//  counter
//
//  Created by Sumit on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startText: UIButton!
    @IBOutlet weak var active: UILabel!
    @IBOutlet weak var counter: UILabel!
    @IBOutlet weak var num: UILabel!
    var s = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func increment(_ sender: Any) {
        if s {
            num.text = String((Int(num.text ?? "") ?? 0) + 1)
        }
    }
    
    @IBAction func start(_ sender: UIButton) {
        if startText.currentTitle == "ON" {
            active.text = "Active"
            startText.setTitle("OFF", for: .normal)
        } else {
            active.text = "Inactive"
            startText.setTitle("ON", for: .normal)
        }
        s.toggle()
    }
    
    
    @IBAction func reset(_ sender: Any) {
        s = true
        active.text = "Active"
        startText.setTitle("OFF", for: .normal)
        num.text = String(0)
    }
}

