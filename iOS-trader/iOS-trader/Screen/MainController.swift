//
//  ViewController.swift
//  iOS-trader
//
//  Created by danish on 09/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField : customUITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let nib = AppTextField()
//        self.view.addSubview(nib)
        addCom(self)
    }
    @IBAction func loginAction(_ sender: UIButton){
        if nameTextField.text == ""{
        nameTextField.setup()
        }
    }
    func addCom(_ view: UIViewController){
//        let logo = LogoViewController(nibName: "LogoViewController", bundle: nil)
//        view.view.center = logo.view.center
//        view.view.addSubview(logo.view)

//        let textField = AppTextFiled(nibName: "AppTextFiled", bundle: nil)
//        view.view.center = textField.view.center
//        view.view.addSubview(textField.view)
//
        
        
        
//        let rect = CGRect(x:0, y:0, width: 120, height: 240)
//        let newView = AppLogo(frame: rect)
//       
//        
//        
//        newView.containerView.backgroundColor = .green
//                self.view.addSubview(newView)
        
    }


}




//struct TestUser: Encodable{
//    let name, email, mobile: String
//
//
//    enum CodeKeys: String, CodeKeys{
//        case name: "namee"
//        case email, mobile
//    }
//
//
//}
