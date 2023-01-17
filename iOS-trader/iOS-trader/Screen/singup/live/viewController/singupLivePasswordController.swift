//
//  singupLivePasswordController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import UIKit

class SingupLivePasswordController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onFirstNameEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.password = sender.text!
        print(sender.text!)
    }
    @IBAction func onLastNameEmail(_ sender: UITextField) {
        SingupLiveHelper.shared.confirmPassword = sender.text!
        print(sender.text!)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
