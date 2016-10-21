//
//  DetailViewController.swift
//  Todo
//
//  Created by Anita Ilieva on 22/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var itemName: UITextField!
   
    var name: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneSegue" {
            name = itemName.text!
        }
    }
    

}
