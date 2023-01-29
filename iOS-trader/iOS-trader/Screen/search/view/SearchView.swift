//
//  SearchView.swift
//  iOS-trader
//
//  Created by danish on 23/01/23.
//

import UIKit
import Kingfisher

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
        loader.startAnimating()
        viewModel.search("", completion: {
            data in
            self.searchTableView.reloadData()
            self.loader.stopAnimating()
        })
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("search view called")
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
        searchTableView.delegate = self
        searchTableView.dataSource = self
//        searchTableView.emptyDataSetSource = self
//        searchTableView.emptyDataSetDelegate = self
//
        let nibName = UINib(nibName: "SearchItem", bundle: nil)
        searchTableView.register(nibName, forCellReuseIdentifier: "custom_search_item")
    }
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBAction func back(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.result.count == 0 {
                self.setEmptyMessage("No Records...")
            } else {
                self.restore()
            }

        return viewModel.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:SearchItemCell = tableView.dequeueReusableCell(withIdentifier: "search_cell", for: indexPath) as! SearchItemCell
//                cell.backgroundColor = rainbow[indexPath.item]
        cell.itemView.layer.cornerRadius = 8
        cell.title.text = viewModel.result[indexPath.item].title
        cell.imagr.kf.setImage(with: URL(string:"https://via.placeholder.com/300/0\(indexPath.item)f/fff.png"))
//        cell.layer.borderColor = blueColor.CGColor
//
        return cell
    }
    
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.searchTableView.bounds.size.width, height: self.searchTableView.bounds.size.height))
            messageLabel.text = message
            messageLabel.textColor = .white
            messageLabel.textAlignment = .center;
            messageLabel.numberOfLines = 0
            messageLabel.sizeToFit()

        self.searchTableView.backgroundView = messageLabel
        }

        func restore() {
            self.searchTableView.backgroundView = nil
            self.searchTableView.separatorStyle = .singleLine
        }

}
