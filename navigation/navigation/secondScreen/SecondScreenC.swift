//
//  ViewController.swift
//  navigation
//
//  Created by danish on 14/01/23.
//

import UIKit

class SecondScreenC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("called")

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondV(_ sender: UIButton) {
        let thirdSC = self.storyboard?.instantiateViewController(withIdentifier: "story1") as! thirdScreenC
        let nav = UINavigationController(rootViewController: thirdSC)
        presentInFullScreen(nav, animated: true)
//        self.present(nav, animated: true)
        
        
        
////        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        let nextViewController = self.storyBoard.instantiateViewController(withIdentifier: "nextView") as! NextViewController
//        self.present(nextViewController, animated:true, completion:nil)
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


extension UIViewController {
  func presentInFullScreen(_ viewController: UIViewController,
                           animated: Bool,
                           completion: (() -> Void)? = nil) {
    viewController.modalPresentationStyle = .fullScreen
    present(viewController, animated: animated, completion: completion)
  }
}
