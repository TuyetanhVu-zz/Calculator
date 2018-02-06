//
//  ViewController.swift
//  VuCalculator
//
//  Created by Tuyetanh Vu on 2/6/18.
//  Copyright © 2018 Tuyetanh Vu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber:Double = 0
    var calculateMath = false
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if calculateMath == true{
            
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            calculateMath = false
            
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
       
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            previousNumber = Double(label.text!)!
            if sender.tag == 12 //Divide button
            {
                
            }
            else if sender.tag == 13 //Multiply button
            {
                
            }
            else if sender.tag == 14 //Subtraction button
            {
                
            }
            else if sender.tag == 15 //Addition button
            {
                label.text = "+"
            }
            
            calculateMath = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

