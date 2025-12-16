//
//  ViewController.swift
//  SumitBirthday
//
//  Created by Sumit on 15/12/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dateTextField: UITextField!
    
    @IBOutlet weak var daysLabel: UILabel!
    
    @IBOutlet weak var daysRemainingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateButton(_ sender: Any) {
        func calculateDaysLeft() {
            guard let dateText = dateTextField.text, !dateText.isEmpty else {
                daysLabel.text = "0"
                return
            }

            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM/yyyy"

            guard let targetDate = formatter.date(from: dateText) else {
                daysLabel.text = "Invalid"
                return
            }

            let today = Date()
            let calendar = Calendar.current

            let components = calendar.dateComponents([.day], from: today, to: targetDate)

            if let days = components.day {
                if days < 0 {
                    daysLabel.text = "Date Passed"
                    daysRemainingLabel.text = ""
                } else {
                    daysLabel.text = "\(days)"
                    daysRemainingLabel.text = "days remaining"
                }
            }

        }
        calculateDaysLeft()
    }
    
}

