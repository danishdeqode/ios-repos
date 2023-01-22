//
//  singupLiveSuccessController.swift
//  iOS-trader
//
//  Created by danish on 22/01/23.
//

import UIKit

class SingupLiveSuccessController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("calleddd")
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

   
    @IBAction func navigate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: {});
//        self.navigationController?.popViewController(animated: true);
    }
}
