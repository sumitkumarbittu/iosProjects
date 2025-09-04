//
//  ViewController.swift
//  rgb1
//
//  Created by Sumit on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        if sender.backgroundColor == .red {
            sender.backgroundColor = .green
        } else if sender.backgroundColor == .green {
            sender.backgroundColor = .blue
        } else {
            sender.backgroundColor = .red
        }
    }
    
}

