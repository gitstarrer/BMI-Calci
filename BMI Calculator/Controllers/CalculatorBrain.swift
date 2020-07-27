//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Himanshu Gupta on 13/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    mutating func calculateBMI(_ height :Float,_ weight : Float){
        let bmivalue = weight / (height * height)
        
        if bmivalue < 18.5{
            bmi = BMI(value: bmivalue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmivalue < 25{
            bmi = BMI(value: bmivalue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmivalue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }
    
    func getBMIvalue() -> String{
        return String(format : "%.1f",bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() ->UIColor{
        return bmi?.color ?? UIColor.white
    }
}
