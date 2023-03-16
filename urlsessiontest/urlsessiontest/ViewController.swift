//
//  ViewController.swift
//  urlsessiontest
//
//  Created by danish on 07/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableview:UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
        // Do any additional setup after loading the view.
//        let u = "https://jsonplaceholder.typicode.com/posts/1"
//        request(urlString: u)
    }
    func request(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url, completionHandler: handle(data: response:  error:)
            )
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data{
            let dataStr = String(data: safeData, encoding: .utf8)
            print(dataStr)
        }
    }
    
    func parseJSON(data: Data) {
            let decoder = JSONDecoder()
            
            do{
                let decoded = try decoder.decode(ModelClass.self, from: data)
                print("====: \(decoded.title)")
            } catch{
                print("error: \(error)")
            }
        }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello world"
        return cell
    }
}


struct ModelClass: Decodable{
    let title: String
}
