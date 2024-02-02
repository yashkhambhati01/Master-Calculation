//
//  InterestCalculator.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class interestCalculator: UIViewController {
    
    
    @IBOutlet weak var text1: UITextField!
    
    
    @IBOutlet weak var text2: UITextField!
    
    
    @IBOutlet weak var text3: UITextField!
    
    
    @IBOutlet weak var FinalAmount: UILabel!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //A = P (1+rt)
    
    
    @IBAction func calculateActionBtn(_ sender: Any) {
      if  let Principal = Double(text1.text!),
        let Interest = Double(text2.text!),
          let Years = Double(text3.text!){
          let Amount = (1 + Interest*Years)
          let P = (Principal*Amount)
          
          FinalAmount.text = String(P)
          
      }
        else if text1.text == ""{
            alert(title: "Error", message: "enter The Pricncipal")
        }
        else if text2.text == ""{
            alert(title: "Error", message: "enter the interest")
        }
        else if text3.text == ""{
            alert(title: "Error", message: "enter the Total Time")
        }
  
    }
    
    func alert(title: String, message: String){
        
            let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
            a.addAction(UIAlertAction(title: "OK", style: .default))
            a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
            present(a, animated: true)
        }
    

}
