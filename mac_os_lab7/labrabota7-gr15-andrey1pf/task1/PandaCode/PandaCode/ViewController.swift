//
//  ViewController.swift
//  PandaCode
//
//  Created by Andrey Goncharenko on 29.04.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundLable: UILabel!
    @IBOutlet weak var backgroundSwitch: UISwitch!
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
        if backgroundSwitch.isOn{
            backgroundLable.text = "Change image: Stars"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
        }
        else{
            backgroundLable.text = "Change image: Morning"
            view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundLable.textColor = UIColor.white
        backgroundLable.text = "Change image: Morning"
         view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
        // Do any additional setup after loading the view.
    }

    
    
}

