//
//  singupLiveEmailController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import Foundation
//
//  LiveController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class SingupLiveEmailController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func onChangeEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.email = sender.text!
        print(sender.text!)
    }
    
    func validate() -> Bool {
        emailField.layer.borderWidth = 1.0
        emailField.layer.cornerRadius = 4.0
        emailField.clipsToBounds = true
        
        if (emailField.text ?? "").isEmpty {
            let myColor = UIColor.red
            emailField.layer.borderColor = myColor.cgColor
            return false
        }
        else{
            let myColor = UIColor.green
            emailField.layer.borderColor = myColor.cgColor
            emailField.layer.borderWidth = 0
            return true;
            
        }
    }
    
    @IBAction func navigate(_ sender: UIButton) {
        loader.startAnimating()
        self.view.isUserInteractionEnabled = false
        validate()
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { time in
            self.loader.stopAnimating()
            self.view.isUserInteractionEnabled = true
            self.performSegue(withIdentifier: SegueIdentifier.toPassword, sender: nil)
        }
    }
    
    
    
    
    
}
