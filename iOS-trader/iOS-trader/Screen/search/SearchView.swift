//
//  SearchView.swift
//  iOS-trader
//
//  Created by danish on 23/01/23.
//

import UIKit

class SearchView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rainbow.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "search_item", for: indexPath)
                cell.backgroundColor = rainbow[indexPath.item]
        cell.layer.cornerRadius = 4
        
        return cell
    }
    // Set the spacing between sections
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 50
       }
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("search view called")
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
        searchTableView.delegate = self
        searchTableView.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)

    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    @IBOutlet weak var searchTableView: UITableView!
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
