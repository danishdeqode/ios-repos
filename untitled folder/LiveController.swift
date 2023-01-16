//
//  LiveController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class LiveController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("controller called")

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func signupNameContinue(_ sender: UIButton) {
        print("3")
    }
    
    @IBAction func signupPasswordContinue(_ sender: UIButton) {
        print("2")
    }
    
    @IBAction func signupEmailContinue(_ sender: UIButton) {
        print("1")
    }
    
    @IBAction func signupDOBContinue(_ sender: UIButton) {
        print("4")
    }
    
}
