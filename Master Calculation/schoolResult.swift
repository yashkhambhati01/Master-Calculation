//
//  SchoolResult.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class schoolResult: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var calBtn: UIButton!
  
    
    @IBOutlet weak var totalValue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func calActionBtn(_ sender: Any) {
        
        if let TotalMarks = Double(text1.text!),
            let YourTotalMarks = Double(text2.text!) {
            let Result = (YourTotalMarks/TotalMarks) * 100
            
            totalValue.text = String(Result)
        }
        else if text1.text == ""{
            alert(title: "Error", message: "Enter Your Total Marks")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "Enter Your Marks")
        }
         
    }
    
    
    func alert(title: String, message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "OK", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    
    

}
