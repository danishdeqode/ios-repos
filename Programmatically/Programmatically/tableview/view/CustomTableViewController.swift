//
//  UIViewController.swift
//  Programmatically
//
//  Created by deq on 01/02/23.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    var tableView: UITableView?
    var list: [String] = ["a", "b","c","d","1","1","1","1","1"]
    
    let cellIdentifier:String = "custom_cell"
    let cellClassName:String = "CustomTableViewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        print("CustomTableViewController called")
        
        
        tableView = UITableView(frame: self.view.frame)
        tableView?.delegate = self
        tableView?.dataSource = self
        self.view.addSubview(tableView!)
        tableView?.register(UINib(nibName: cellClassName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        
    }

}


extension CustomTableViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        return cell
    }
    
    
}
