class TableViewController: UITableViewController {

    let db = UserDefaults.standard
    var items: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let list = db.array(forKey: "todoItems") as? [String]{
            items = list
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.mainCell, for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}