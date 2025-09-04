//
//  ViewController.swift
//  light
//
//  Created by GEU on 26/08/25.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatedUI()
    }

    
    func updatedUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }
        else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func button(_ sender: Any) {
        lightOn.toggle()
        updatedUI()
    }
}
