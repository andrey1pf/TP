//
//  ViewController.swift
//  time
//
//  Created by Andrey Goncharenko on 13.05.22.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var switchOptions: UISegmentedControl!
    @IBOutlet weak var datePicker: UIDatePicker!
    var resultLabelLine : String = ""
    @IBAction func calculateResult(_ sender: Any) {
        let components = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: datePicker.date)
        let year = components.year
        let month = components.month
        let day = components.day
        let hour  = components.hour
        let minute = components.minute
        var result : Int
        switch switchOptions.selectedSegmentIndex{
        case 0:
            result = ((Int(exactly: month!)!) - 1) * 30 + (Int(exactly: day!)!)
            resultLabelLine = "Number of days since the beginning of the year: \(result)"
        case 1:
            result = (Int(exactly: hour!)!) * 60 + (Int(exactly: minute!)!)
            resultLabelLine = "Amount minutes since the beginning of the day: \(result)"
        case 2:
            result = (Int(exactly: minute!)!) * 60
            resultLabelLine = "Number of seconds since the beginning of the hour: \(result)"
        default:
            result = 1
            resultLabelLine = "Problem"
            break
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let controller = segue.destination as! SecondViewController
        
        controller.result = resultLabelLine
    }
    
    @IBAction func unwindTOMainViewController(unwindSegue: UIStoryboardSegue){
        
    }
}

