//
//  ViewController.swift
//  alamofire-test
//
//  Created by danish on 15/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func callAPI(_ sender: UIButton) {
        print("calling API....")
        
        let api = NetworkC()
        guard let url = URL(string:"https://dummy.restapiexample.com/api/v1/employees") else{
            print("URL error")
            return
        }
        api.excute(url) {
            (json, error) in
            if let error = error{
                print("error--")
                print(error)
            }
            else{
                print("worked")
                print(json)
            }
        }
        
    }
    
}

