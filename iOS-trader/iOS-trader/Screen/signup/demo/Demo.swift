//
//  DemoController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class Demo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func APIcall(_ sender: UIButton) {
        print("calling API....")
        
        let api = NetworkC()
        guard let url = URL(string:"https://jsonplaceholder.typicode.com/posts/") else{
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
                
                //for single object
//                let pp = try! JSONDecoder().decode(PostItem.self, from: json as! Data)
                
                //for list of objects
                let pp = try! JSONDecoder().decode([PostItem].self, from: json as! Data)
                print(pp)
                
            }
        }
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
