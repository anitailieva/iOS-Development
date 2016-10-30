//
//  ViewController.swift
//  JSON
//
//  Created by Anita Ilieva on 30/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UITableViewController {
    
    var numberOfRows = 0
    
    var nameArray = [String]()
    var ageArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        parseJSON()
    }

    func parseJSON()
    {
        let path : String = Bundle.main.path(forResource: "jsonFile", ofType: "json") as String!
        let jsonData = NSData(contentsOfFile: path) as NSData!
        let readableJSON = JSON(data: jsonData as! Data, options: JSONSerialization.ReadingOptions.mutableContainers, error: nil)
        
        
        let name = readableJSON["people"]["person1"]["name"]
        
        numberOfRows = readableJSON["people"].count // counting how many people there are inside people fucntion
        
        for i in 1...numberOfRows {
            var person = "person"
            person += "\(i)"
            let name = readableJSON["people"][person]["name"].string! as String
            var age = readableJSON["people"][person]["age"].string! as String


    
            nameArray.append(name)
            ageArray.append(age)
        }
        
        NSLog("\(name)")
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberOfRows
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        if nameArray.count != 0 {
            cell.textLabel?.text = nameArray[indexPath.row]
        }
        
        return cell
    

}
}
