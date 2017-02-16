//
//  ViewController.swift
//  Is It Prime
//
//  Created by Marc Aupont on 10/12/15.
//  Copyright © 2015 Digimark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInputTextField: UITextField!
    
    @IBAction func isItPrimeBtn(sender: AnyObject) {
        
        //The if let is to check whether or not the user inputted a valid value
        if  let number = Int(userInputTextField.text!) {
        
            var isPrime = true
        
            if number == 1 {
            
                isPrime = false
            }
        
            if number != 1 && number != 2 {
            
                for var i = 2; i < number; i++ {
                
                    if Int(number) % i == 0 {
                    
                    isPrime = false
                    
                    }
                
                }
            }
        
            if isPrime {
            
                resultLabel.text = "\(Int(number)) is prime!"
                
            } else {
            
                resultLabel.text = "\(Int(number)) is not prime"
            }
            
        } else {
            
            resultLabel.text = "Please enter a whole number"
        }
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

