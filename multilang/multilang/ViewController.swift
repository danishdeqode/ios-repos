//
//  ViewController.swift
//  multilang
//
//  Created by deq on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        print("called \(sender)")
        
        if sender.selectedSegmentIndex==0{
            label.text = "myLable1".localize(code: "en")
        }else{
            label.text = "myLable1".localize(code: "fr")
        }
    }
    
}

extension String{
    func localize(code:String)->String{
        let path = Bundle.main.path(forResource: code, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle:  bundle!, value: "", comment: "")
    }
}

