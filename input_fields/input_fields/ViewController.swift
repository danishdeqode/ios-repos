//
//  ViewController.swift
//  input_fields
//
//  Created by danish on 12/01/23.
//

// radio and checkbox widget not available in iOS,
// implement using button or use library
// https://stackoverflow.com/questions/29117759/how-to-create-radio-buttons-and-checkbox-in-swift-ios

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func editing(_ sender: UITextField) {
        print("Value \(sender.text)")
    }

    @IBAction func stepp(_ sender: UIStepper) {
        print("Value \(sender.value)")
    }
    @IBAction func stepChanged(_ sender: UIStepper) {
        
        print("Value \(sender.value)")
    }
    @IBAction func change(_ sender: UISwitch) {
        print("Value \(sender.isOn)")
    }
    
    @IBAction func slide(_ sender: UISlider) {
        
        print("Value \(sender.value)")
    }
    
    
    
    
    @IBAction func ddd(_ sender: UIDatePicker) {
        print("Value \(sender.date)")
    }
}

