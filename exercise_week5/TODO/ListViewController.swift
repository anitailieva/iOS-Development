//
//  ListViewController.swift
//  Todo
//
//  Created by Anita Ilieva on 22/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    
    var items = [String]()
    var newItem: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        items = ["Pay bills", "Iron clothes", "Do grocery shopping"]
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "itemCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self

            }
    
    @IBAction func cancel(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func done(segue:UIStoryboardSegue) {
        let detailVC = segue.source as! DetailViewController
        newItem = detailVC.name
        
        items.append(newItem)
        self.tableView.reloadData()
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    //this method tells the table view how many rows to display in a given section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel!.text = items[indexPath.row]
        return cell
}
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let mySelectedCell:UITableViewCell = tableView.cellForRow(at: indexPath) {
        mySelectedCell.detailTextLabel?.textColor = UIColor.white
        
            if mySelectedCell.accessoryType == UITableViewCellAccessoryType.checkmark{
        mySelectedCell.tintColor = UIColor.blue
                        mySelectedCell.accessoryType = .none
            }
            else
            {
                mySelectedCell.accessoryType = .checkmark
                mySelectedCell.tintColor = UIColor.blue

            }
        }
        
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            items.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }
    }
    
}


