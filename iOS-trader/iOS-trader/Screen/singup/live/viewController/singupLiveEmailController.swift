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
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return isValid()
    }
    
//MARK: - Validation
    
    
    func isValid() -> Bool{
        
        return true;
    }
    
    
    
    
    
}
