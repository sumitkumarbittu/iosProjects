//
//  ViewController.swift
//  stuData2
//
//  Created by GEU on 25/08/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uniField: UITextField!
    @IBOutlet weak var semField: UITextField!
    @IBOutlet weak var courseField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func preDataButton(_ sender: Any) {
        nameField.text = "Sumit"
        semField.text = "Btech"
        courseField.text = "5"
        uniField.text = "GEU"
    }
}

