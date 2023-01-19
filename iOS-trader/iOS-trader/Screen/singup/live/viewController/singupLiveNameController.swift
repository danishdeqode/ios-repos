//
//  singupLiveNameController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import UIKit

class SingupLiveNameController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    // MARK: - UI Fields
    @IBOutlet weak var lnameField: UITextField!
    @IBOutlet weak var fnameField: UITextField!
    @IBAction func onFirstNameEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.firstName = sender.text!
        print(sender.text!)
    }
    @IBAction func onLastNameEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.lastName = sender.text!
        print(sender.text!)
    }
    
    // MARK: - Validation
    
    func validate(_ field: UITextField) -> Bool {
        field.layer.borderWidth = 1.0
        field.layer.cornerRadius = 4.0
        field.clipsToBounds = true
        
        if (field.text ?? "").isEmpty {
            let myColor = UIColor.red
            field.layer.borderColor = myColor.cgColor
            return false
        }
        else{
            let myColor = UIColor.green
            field.layer.borderColor = myColor.cgColor
            field.layer.borderWidth = 0
            return true;
        }
    }
    
    
    
    // MARK: - Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        validate(fnameField)
        validate(lnameField)
        return true
    }
    

}
