//
//  ViewController.swift
//  alamofire-test
//
//  Created by danish on 15/01/23.
//

import UIKit

class ViewController: UIViewController {
    let activityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        test()
        // Do any additional setup after loading the view.
    }
    
    func test(){
        
        activityIndicator.frame = CGRect (x: 0, y: 0, width: 64, height: 64)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
        activityIndicator.translatesAutoresizingMaskIntoConstraints=false
        activityIndicator.center = CGPoint (x: self.view.frame.size.width/2, y: self.view.frame.size.height/2)
        self.view.addSubview (activityIndicator)
    }
    
    func setLoader(_ state:Bool){
        if state{
            activityIndicator.startAnimating()
        }
        else{
            activityIndicator.stopAnimating()
        }
    }
    
    

    @IBAction func callAPI(_ sender: UIButton) {
        print("calling API....")
        setLoader(true)
        
        let api = NetworkC()
        guard let url = URL(string:"https://dummy.restapiexample.com/api/v1/employees") else{
            print("URL error")
            setLoader(false)
            return
        }
        api.excute(url) { [self]
            (json, error) in
            if let error = error{
                print("error--")
                print(error)
                self.setLoader(false)
            }
            else{
                print("worked")
                print(json)
                self.setLoader(false)
            }
        }
        
    }
    
}

