//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by deq on 02/02/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let sections = ["Trending Movies", "Top Rated", "Popular", "Series", "Funny", "Upcoming"]
    
    private let homeFeedTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionTableViewCell.self, forCellReuseIdentifier: CollectionTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        

        let header = HomeHeaderView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 360))
        homeFeedTable.tableHeaderView = header
        
        addNavIcons()
    }
    
    override func viewDidLayoutSubviews() {
        homeFeedTable.frame = view.bounds
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
    }
    
    func addNavIcons(){
       
        var logo = UIImage(named: "logo")
        let imgView = UIImageView(image: logo)
        imgView.frame = CGRect(x: 0, y: 0, width: 10, height: 50)
        logo = logo?.withRenderingMode(.alwaysOriginal)
        let leftItem = UIBarButtonItem()
        leftItem.image = logo
        navigationItem.leftBarButtonItems = [leftItem]
       // navigationItem.leftBarButtonItem = UIBarButtonItem(image: logo, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
        ]
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


extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = homeFeedTable.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else{
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        40
    }
    
}
