//
//  SingupController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class SingupScreen: UIViewController {
    let liveHelper = SingupLiveHelper.shared

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        SingupLiveHelper.reset()
        return true;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
//        if segue.identifier == "asd"{
//            if let vc = segue.destination as? DemoController{
//                print("....")
//            }
//        }
    }
//    @IBAction func doSignup(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "asd", sender: nil)
//        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "story_signup_email") as! SingupLiveEmailController
//        self.navigationController?.pushViewController(secondViewController, animated: true)
        
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
