//
//  BMIModel.swift
//  BMI Calculator
//
//  Created by Sergey A on 30.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / powf(height, height)
        
        let colors = ( underweight: #colorLiteral(red: 0.2648622394, green: 1, blue: 1, alpha: 1), normal: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1), overweight: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1) )
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more meat", color: colors.underweight)
            print("Underweight")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are good", color: colors.normal)
            print("Normal weight")
        } else {
            bmi = BMI(value: bmiValue, advice: "Be careful", color: colors.overweight)
            print("Overweight")
        }
    }
    
    
    func getBMIValue() -> String {
        let formattedToStringBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return formattedToStringBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}



