//
//  SingupController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class SingupController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let liveHelper = SingupLiveHelper.shared
        let demoHelper = SingupDemoHelper.shared
    }
    
    @IBAction func doSignup(_ sender: UIButton) {
        let secondViewController = self.storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as SecondViewController
        self.navigationController.pushViewController(secondViewController, animated: true)
        SingupController
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
