//
//  ViewController.swift
//  TanishaBMI
//
//  Created by Sumit on 15/12/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightValueLabel: UILabel!
    
    @IBOutlet weak var weightValueLabel: UILabel!
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    
    @IBOutlet weak var bmiCategoryLabel: UILabel!
    
    @IBOutlet weak var calculateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Set slider ranges
        heightSlider.minimumValue = 0.5
        heightSlider.maximumValue = 1.5
        
        weightSlider.minimumValue = 1
        weightSlider.maximumValue = 100
        
        // Set initial labels
        updateSliderLabels()
        
        bmiValueLabel.text = "-"
        bmiCategoryLabel.text = "-"
        
        
        calculateButton.backgroundColor = .systemOrange
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        updateSliderLabels()
    }
    
    @IBAction func sliderchanged2(_ sender: Any) {
        updateSliderLabels()
    }
    
    func updateSliderLabels() {
        let height = String(format: "%.2f", heightSlider.value)
        let weight = Int(weightSlider.value)
        
        heightValueLabel.text = "\(height)m"
        weightValueLabel.text = "\(weight)Kg"
    }
    

    @IBAction func calculateBMI(_ sender: Any) {
        let height = Double(heightSlider.value)
        let weight = Double(weightSlider.value)
        
        let bmi = weight / (height * height)
        let bmiRounded = String(format: "%.1f", bmi)
        
        bmiValueLabel.text = bmiRounded
        
        if bmi < 18.5 {
            bmiCategoryLabel.text = "Underweight"
            bmiCategoryLabel.textColor = .systemYellow
        } else if bmi < 25 {
            bmiCategoryLabel.text = "Normal"
            bmiCategoryLabel.textColor = .systemGreen
        } else if bmi < 30 {
            bmiCategoryLabel.text = "Overweight"
            bmiCategoryLabel.textColor = .systemOrange
        } else {
            bmiCategoryLabel.text = "Obese"
            bmiCategoryLabel.textColor = .systemRed
        }
    }
    
}

