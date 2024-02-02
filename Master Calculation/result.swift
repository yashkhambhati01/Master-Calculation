//
//  Result.swift
//  Master Calculation
//
//  Created by R93 on 18/01/24.
//

import UIKit

class result: UIViewController {
    
    @IBOutlet weak var text1: UITextField!
    
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var finalResult: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func btnAction(_ sender: Any) {
        if let Number = Double(text1.text!), let Square = Double(text2.text!){
            var FinalAns = 1
            for i in 0..<Int(Square){
                FinalAns = FinalAns * Int(Number)
            }
            finalResult.text = String(FinalAns)
        }
        
        
    }
    
    
    func alert(title: String,message: String){
        let a = UIAlertController(title: title, message: message, preferredStyle: .alert)
        a.addAction(UIAlertAction(title: "Ok", style: .default))
        a.addAction(UIAlertAction(title: "Cencle", style: .cancel))
        present(a, animated: true)
    }
    
    
}
