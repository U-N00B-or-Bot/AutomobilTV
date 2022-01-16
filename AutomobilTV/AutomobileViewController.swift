//U-N00B-or-Bot

import UIKit

class AutomobileViewController: UITableViewController {
   // private var autoList = Auto.getAutoList()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem
        
        
        
    }
    var autoList: [Auto] = []
    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        autoList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "automobile", for: indexPath)
        let auto = autoList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = auto.name
        content.secondaryText = auto.engine
        content.image = UIImage(named: auto.photo)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        

        return cell
    }

    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentTea = autoList.remove(at: sourceIndexPath.row)
        autoList.insert(currentTea, at: destinationIndexPath.row)
    }
    
    // MARK: - Navigation
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let TeaDetailsVC = segue.destination as? TeaDetailsViewController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        
        let tea = autoList[indexPath.row]
        TeaDetailsVC.tea = tea
    }
    

}
