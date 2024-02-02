//
//  EMICalculator.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class eMICalculator: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var txt3: UITextField!
    
    
    @IBOutlet weak var TotalPayableAmount: UILabel!
    
    
    @IBOutlet weak var totalInterest: UILabel!
    
    
    @IBOutlet weak var InterestAmoOutlet: UILabel!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func CalculateActionBtn(_ sender: Any) {
        let loanAMount = Double(text1.text!)
        let Rate = Double(text2.text!)
        let Years = Double(txt3.text!)
        
        
        
       // TotalPayableAmount.text = String(EMI(loanAMount: Double(text1.text!) ?? 0, Rate: Double(text2.text!) ?? 0, Years: Double(txt3.text!)!))
        
        var Emi = String(EMI(loanAMount: Double(text1.text!) ?? 0, Rate: Double(text2.text!) ?? 0, Years: Double(txt3.text!)!))
        
        TotalPayableAmount.text = String(TotalPayment(Emi: Double(Emi) ?? 0, Years: Int(Double(txt3.text!) ?? 0)))
        
        var TotalPayment = (TotalPayment(Emi: Double(Emi) ?? 0, Years: Int(Double(txt3.text!) ?? 0)))
        
        totalInterest.text = String(interest(TotalPayment: Double(TotalPayment), loanAMount: Double(text1.text!) ?? 0))
        
        InterestAmoOutlet.text = String(InterestRate(loanAmount: Double(loanAMount ?? 0), Years: Double(Years ?? 0)))
    
        
        
        
        
        if text1.text == ""{
            alert(title: "Error", Message: "Enter the Loan Amount")
        }
        else if text2.text == ""{
                alert(title: "error", Message: "Enter the interest")
        }
        else if txt3.text == ""{
            alert(title: "Error", Message: "Enter the Years")
        }
    }
    
    func alert(title: String,Message: String){
        let a = UIAlertController(title: title , message: Message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "cencle", style: .cancel))
        present(a, animated: true)
    }
    
    func EMI(loanAMount : Double, Rate: Double, Years: Double)->Double{
        let interestvalue = Rate / 1200
        let monthly = Years * 12
        let Total = loanAMount * interestvalue / (1 - (pow(1/(1 + interestvalue), monthly)))
        return Total

    }
    
    func TotalPayment( Emi: Double, Years: Int  )-> Double{
        let totalMonth = Years * 12
        let Total = Emi * Double(totalMonth)
        return Total
        
    }
    
    func interest(TotalPayment: Double, loanAMount: Double) -> Double {
        let FinalInterest = TotalPayment - loanAMount
        return FinalInterest
        
    }
    
    func InterestRate(loanAmount: Double, Years: Double) -> Double {
        let InterestAmount = loanAmount * (Years/12)
        return InterestAmount
        
    }
   
}


