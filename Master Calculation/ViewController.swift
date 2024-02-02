//
//  ViewController.swift
//  Master Calculation
//
//  Created by R93 on 09/01/24.
//

import UIKit

 class ViewController: UIViewController {
    
    
 @IBOutlet weak var StartAppBtn: UIButton!
    
    
 @IBOutlet weak var AboutUsBtn: UIButton!

     
     @IBOutlet weak var startAppOutlet: UIButton!
     
     @IBOutlet weak var AboutUsOutlet: UIButton!
     
     @IBOutlet weak var shareAppOutlet: UIButton!
     
     @IBOutlet weak var RateAppOutlet: UIButton!
     
     
     
    override func viewDidLoad() {
        super.viewDidLoad()
        let mycolor: UIColor = .white
        
        startAppOutlet.layer.borderWidth = 1
        startAppOutlet.layer.borderColor = mycolor.cgColor
        startAppOutlet.layer.cornerRadius = 10
        
        AboutUsOutlet.layer.borderWidth = 1
        AboutUsOutlet.layer.borderColor = mycolor.cgColor
        AboutUsOutlet.layer.cornerRadius = 10
        
        shareAppOutlet.layer.borderWidth = 1
        shareAppOutlet.layer.borderColor = mycolor.cgColor
        shareAppOutlet.layer.cornerRadius = 10
        
        RateAppOutlet.layer.borderWidth = 1
        RateAppOutlet.layer.borderColor = mycolor.cgColor
        RateAppOutlet.layer.cornerRadius = 10
    }
     
     
     @IBAction func StartAppBtnAction(_ sender: Any) {
         neviget()
         
     }
     
     func neviget(){
         let neviget = storyboard?.instantiateViewController(identifier: "MainPage") as! MainPage
         navigationController?.pushViewController(neviget, animated: true)
         
     }
     
     
     
}

