//
//  ViewController.swift
//  List
//
//  Created by Anita Ilieva on 04/11/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {

    var listItems = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: Selector(extendedGraphemeClusterLiteral: "addItem"))
    }
    
    func addItem() {
        let alertController = UIAlertController(title: "Type Something", message: "Type....", preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Confirm", style: UIAlertActionStyle.default, handler: ({
            (_) in
           if let field = alertController.textFields![0] as? UITextField{
                self.saveItem(itemToSave: field.text!)
                self.tableView.reloadData()
            
            }
            
            }
        ))
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        
        alertController.addTextField(configurationHandler: {
            (textField) in
            textField.placeholder = "Type in something!"
        })
        
        alertController.addAction(confirmAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func saveItem(itemToSave : String) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "ListEntity", in: managedContext)
        
        
        let item = NSManagedObject(entity: entity!, insertInto: managedContext)
        
        item.setValue(itemToSave, forKey: "item")
        
        do {
            try managedContext.save()
            listItems.append(item)
          
        }
        
        catch{
            print("Error")
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "ListEntity")
        do {
            let results = try managedContext.fetch(fetchRequest)
            
            listItems = results as! [NSManagedObject]
        }
            
        catch {
            print("Error")
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        tableView.reloadRows(at: [indexPath], with: UITableViewRowAnimation.right)
        
        managedContext.delete(listItems[indexPath.row])
        listItems.remove(at: indexPath.row)
        self.tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listItems.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
    
        let item = listItems[indexPath.row]
        cell.textLabel?.text = item.value(forKey: "item") as! String?
        
        
        return cell
    
    }

}

