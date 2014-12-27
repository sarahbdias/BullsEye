//
//  ViewController.swift
//  BullsEye
//
//  Created by Sarah Dias on 12/22/14.
//  Copyright (c) 2014 Treehouse. All rights reserved.
//
~987654321q`    aZ
import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 24
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        currentValue = lroundf(slider.value)
        slider.value = Float(currentValue)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .Alert)
        
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(action)
        
        presentViewController(alert, animated: true, completion: nil)
    }

    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }

}


