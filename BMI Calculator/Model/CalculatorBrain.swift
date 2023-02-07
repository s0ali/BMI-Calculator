//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sayed Ali Husain on 07/02/2023.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        var advice: String
        var color: UIColor
        
        switch bmiValue {
        case 0 ..< 18.5:
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2396554799, green: 0.003331697204, blue: 0.974753207, alpha: 1)
        case 18.5 ... 24.9:
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case 25 ... Float.greatestFiniteMagnitude:
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.7572420679, green: 0.113276455, blue: 0.00654240754, alpha: 1)
        default:
            advice = "No advice!"
            color = .clear
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
}
