//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sayed Ali Husain on 06/02/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiString: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiString
        adviceLable.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
