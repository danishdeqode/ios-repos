//
//  singupLiveDOBController.swift
//  iOS-trader
//
//  Created by deq on 16/01/23.
//

import UIKit

class SingupLiveDOBController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        SingupLiveHelper.shared.dob = sender.date
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }

    @IBOutlet weak var loader: UIActivityIndicatorView!

    // MARK: - Navigation
    
    @IBAction func navigate(_ sender: UIButton) {
        loader.startAnimating()
        self.view.isUserInteractionEnabled = false
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { time in
            self.loader.stopAnimating()
            self.view.isUserInteractionEnabled = true
            self.performSegue(withIdentifier: SegueIdentifier.toCountry, sender: nil)
        }
    }

}
