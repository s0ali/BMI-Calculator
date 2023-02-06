//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sayed Ali Husain on 06/02/2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiString: String?
    
    @IBOutlet weak var bmiLable: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLable.text = bmiString
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
