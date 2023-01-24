//
//  DemoController.swift
//  iOS-trader
//
//  Created by danish on 15/01/23.
//

import UIKit

class DemoController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func APIcall(_ sender: UIButton) {
        print("calling API....")
        
        let api = NetworkC()
        guard let url = URL(string:"https://reqres.in/api/unknown/2") else{
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
                
//                let decoder = JSONDecoder()
//                let posts = try! decoder.decode(Single.self, from: json as! Data)
//                print(posts)
//                print(json)
//                for user in posts{
//                    print(user.title)
//                }
                
                
//                let decoder = JSONDecoder()
//                let information: Users = try! decoder.decode(Users.self, from: json as! Data)
//                print(information.status)
////                print(json)
//                for user in information.data{
//                    print(user.employeeName)
//                }
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
