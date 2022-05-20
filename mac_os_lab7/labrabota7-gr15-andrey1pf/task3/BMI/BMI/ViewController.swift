//
//  ViewController.swift
//  BMI
//
//  Created by Andrey Goncharenko on 13.05.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var sexSegmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var activitySegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTapped(_ sender: Any) {
        let age = (Double(ageTextField.text!)!)
        let height = (Double(heightTextField.text!)!)
        let weight = (Double(weightTextField.text!)!)
        let index = weight/(pow(height, 2)/100)*100
        var BMI : Int
        BMI = Int(index)
        var BMR:Double
        var AMR:Double
        switch activitySegmentedControl.selectedSegmentIndex{
        case 0:
            AMR = 1.2
        case 1:
            AMR = 1.375
        case 2:
            AMR = 1.55
        case 3:
            AMR = 1.725
        default:
            AMR = 1
            break
        }
        
        switch sexSegmentedControl.selectedSegmentIndex
        {
        case 0:
            BMR = (88.362 + 13.397 * weight + 4.799 * height - 5.677 * age) * AMR
        case 1:
            BMR = (447.593 + 9.247 * weight + 3.098 * height - 4.330 * age) * AMR
        default:
            BMR = 1
            break
        }
        
        resultLabel.text = "Вы должны потреблять \(BMR) килокалорий для поддержания веса. Индекс массы тела \(BMI)"
    }
}

