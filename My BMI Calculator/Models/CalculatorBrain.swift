
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        // BMI = (weight (lb) / height² (in²)) * 703
        
        let bmiValue = (weight / pow(height, 2)) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "thin air...", color: UIColor {_ in return #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) })
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "a bowl of healthy salad", color: UIColor {_ in return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) })
        } else {
            bmi = BMI(value: bmiValue, advice: "lots lots of icecream...", color: UIColor {_ in return #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1) })
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
}
