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
        guard let dateText = dateTextField.text, !dateText.isEmpty else {
            daysLabel.text = "0"
            daysRemainingLabel.text = ""
            return
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        guard let inputDate = formatter.date(from: dateText) else {
            daysLabel.text = "Invalid"
            daysRemainingLabel.text = ""
            return
        }
        
        let calendar = Calendar.current
        let today = Date()
        
        // Extract day & month from input date
        let inputComponents = calendar.dateComponents([.day, .month], from: inputDate)
        
        // Create date with current year
        var nextDateComponents = DateComponents()
        nextDateComponents.day = inputComponents.day
        nextDateComponents.month = inputComponents.month
        nextDateComponents.year = calendar.component(.year, from: today)
        
        guard var nextDate = calendar.date(from: nextDateComponents) else {
            daysLabel.text = "Error"
            return
        }
        
        // If date already passed this year → move to next year
        if nextDate < today {
            nextDate = calendar.date(byAdding: .year, value: 1, to: nextDate)!
        }
        
        let days = calendar.dateComponents([.day], from: today, to: nextDate).day ?? 0
        
        daysLabel.text = "\(days)"
        daysRemainingLabel.text = "days remaining"
    }
    
}

