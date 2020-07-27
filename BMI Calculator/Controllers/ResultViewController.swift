//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Himanshu Gupta on 13/06/20.
//  Copyright © 2020 mine. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
       
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated : true, completion : nil)
    }
    
   
}
