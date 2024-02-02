//
//  DiscountCalculator.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class discountCalculator: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    
    
    @IBOutlet weak var PriceAfterDis: UILabel!
    
    
    @IBOutlet weak var savedA: UILabel!
  

    var number = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //(original price × discount / 100)
    

    
    @IBAction func countActionBtn(_ sender: Any) {
        
        
        if let Price = Double(text1.text!),
            let discount = Double(text2.text!){
            let OGPrice = ((Price * discount)/100)
            let finalPrice = Price - OGPrice
            
            PriceAfterDis.text = String(finalPrice)
            savedA.text = String(OGPrice)
        }
        else if text1.text == ""{
            alert(title: "Error", Message: "Enter The Price")
        }
        else if text2.text == ""{
            alert(title: "Error", Message: "Enter The Discount")
        }
       
    }
    
    
    
    
    func alert(title: String, Message: String){
        let a = UIAlertController(title: title, message: Message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "Ok", style: .default))
        a.addAction(UIAlertAction(title: "cencle", style: .default))
        present(a, animated: true)
    }
    


}
