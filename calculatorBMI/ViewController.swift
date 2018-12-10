//
//  ViewController.swift
//  calculatorBMI
//
//  Created by David Hazan on 09/12/2018.
//  Copyright © 2018 David Hazan. All rights reserved.
//

import UIKit

var wBmi:Double = 0;
var hBmi:Double = 0;
var heightMultiply: Double?
var heightSign = "Meters"
var weightSign = "Kg"



class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightOutletSlider: UISlider!
    @IBOutlet weak var heightOutletSlider: UISlider!
    
    
    @IBAction func weightSlider(_ sender: UISlider)
    {
    weightLabel.text = String(Int(weightOutletSlider.value)) + " " + weightSign
    }
    
    @IBAction func heightSlider(_ sender: UISlider)
    {
     heightLabel.text = String(Int(heightOutletSlider.value*0.01)) + " " + heightSign
    
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func bmiResult(_ sender: UIButton)
    {
        let wBmi = weightOutletSlider.value
        let hBmi = heightOutletSlider.value
        heightMultiply = Double(hBmi * hBmi)
//        let resultBMI = Double(resultLabel.text!)!
        resultLabel.text = String(wBmi / hBmi)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

