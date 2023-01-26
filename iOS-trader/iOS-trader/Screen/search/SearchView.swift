//
//  SearchView.swift
//  iOS-trader
//
//  Created by danish on 23/01/23.
//

import UIKit

class SearchView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]

    @IBOutlet weak var searchTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("search view called")
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
        searchTableView.delegate = self
        searchTableView.dataSource = self
        
        let nibName = UINib(nibName: "SearchItem", bundle: nil)
        searchTableView.register(nibName, forCellReuseIdentifier: "custom_search_item")
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "search_cell", for: indexPath)
//                cell.backgroundColor = rainbow[indexPath.item]
        cell.layer.cornerRadius = 2
//        cell.layer.borderColor = blueColor.CGColor
//
        return cell
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
