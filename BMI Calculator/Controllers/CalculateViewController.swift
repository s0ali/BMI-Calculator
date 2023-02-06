//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Sayed Ali Husain on 05/02/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLable: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = sender.value
        let roundedToTwoDecimal = round(value * 100) / 100.0
        heightLable.text = "\(roundedToTwoDecimal)m"
        print(roundedToTwoDecimal)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = sender.value
        let rounded = round(value)
        weightLable.text = "\(Int(rounded))Kg"
        print(rounded)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = round(heightSlider.value * 100) / 100.0
        let weight = round(weightSlider.value)
        
        let bmi: Float = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        print(bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiString = bmiValue
        }
    }
}

