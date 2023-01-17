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
        print("controller called")
    }
    
    
    @IBAction func onChangeEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.email = sender.text!
        print(sender.text!)
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    
    
    
    
    
}
