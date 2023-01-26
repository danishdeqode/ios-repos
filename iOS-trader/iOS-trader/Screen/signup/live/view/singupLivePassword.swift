//
//  singupLivePasswordController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import UIKit

class SingupLivePassword: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loader.stopAnimating()
        
        // Do any additional setup after loading the view.
    }
    // MARK: - UI Fields

    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var confirmPasswordField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func onPasswordChanged(_ sender: UITextField) {
        SingupLiveHelper.shared.password = sender.text!
        print(sender.text!)
    }
    @IBAction func onConfirmPasswordChanged(_ sender: UITextField) {
        SingupLiveHelper.shared.confirmPassword = sender.text!
        print(sender.text!)
    }
    
    // MARK: - Validation
    func validatePassword() -> Bool {
        passwordField.layer.borderWidth = 1.0
        passwordField.layer.cornerRadius = 4.0
        passwordField.clipsToBounds = true
        
        if (passwordField.text ?? "").isEmpty {
            let myColor = UIColor.red
            passwordField.layer.borderColor = myColor.cgColor
            return false
        }
        else{
            let myColor = UIColor.green
            passwordField.layer.borderColor = myColor.cgColor
            passwordField.layer.borderWidth = 0
            return true;
            
        }
    }
    
    func validateConfirmPassword() -> Bool {
        confirmPasswordField.layer.borderWidth = 1.0
        confirmPasswordField.layer.cornerRadius = 4.0
        confirmPasswordField.clipsToBounds = true
        let isMatching = confirmPasswordField.text == passwordField.text
        if !isMatching {
            let myColor = UIColor.red
            confirmPasswordField.layer.borderColor = myColor.cgColor
            return false
        }
        else{
            let myColor = UIColor.green
            confirmPasswordField.layer.borderColor = myColor.cgColor
            confirmPasswordField.layer.borderWidth = 0
            return true;
            
        }
    }
    
    // MARK: - Navigation
    

    @IBAction func navigate(_ sender: UIButton) {
        loader.startAnimating()
        self.view.isUserInteractionEnabled = false
        validatePassword() && validateConfirmPassword()
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { time in
            self.loader.stopAnimating()
            self.view.isUserInteractionEnabled = true
            self.performSegue(withIdentifier: SegueIdentifier.toName, sender: nil)
        }
    }

}
