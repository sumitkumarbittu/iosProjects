//
//  ViewController.swift
//  rgb2
//
//  Created by Sumit on 04/09/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func red(_ sender: Any) {
        view.backgroundColor = .red
    }
    
    @IBAction func green(_ sender: Any) {
        view.backgroundColor = .green
    }
    
    @IBAction func blue(_ sender: Any) {
        view.backgroundColor = .blue
    }
    
    @IBAction func random(_ sender: UIButton) {
        view.backgroundColor = [UIColor.blue, .red, .green].randomElement()
    }
    
}

