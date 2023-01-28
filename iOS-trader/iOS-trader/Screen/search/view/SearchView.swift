//
//  SearchView.swift
//  iOS-trader
//
//  Created by danish on 23/01/23.
//

import UIKit

class SearchView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
//    let rainbow: [UIColor] = [.red, .yellow, .green, .orange, .blue, .purple, .magenta]
    let viewModel:SearchViewModel = SearchViewModel()
    

    @IBOutlet weak var searchTableView: UITableView!
    
    @IBAction func searchField(_ sender: UITextField) {
        viewModel.searchValue = sender.text ?? ""
        
        
        if(sender.text=="hello"){
            callAPI()
        }
    }
    
    func callAPI(){
        viewModel.search("", completion: {
            data in
            self.searchTableView.reloadData()
        })
    }
    
    
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
        return viewModel.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:SearchItemCell = tableView.dequeueReusableCell(withIdentifier: "search_cell", for: indexPath) as! SearchItemCell
//                cell.backgroundColor = rainbow[indexPath.item]
        cell.itemView.layer.cornerRadius = 8
        cell.title.text = viewModel.result[indexPath.item].title
//        cell.layer.borderColor = blueColor.CGColor
//
        return cell
    }

}
