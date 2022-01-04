//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Cory Carte on 1/4/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
        
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight) / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pie", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Perfect!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pie", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let formatBmi: String = String(format: "%.1f", (bmi?.value ?? 42.0))
        return formatBmi
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "A Ghost!"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
