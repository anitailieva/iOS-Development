//
//  DestinationViewController.swift
//  Exercise2
//
//  Created by Anita Ilieva on 09/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class DestinationViewController: UIViewController {
    
       
    @IBOutlet weak var titleTxt: UITextView!
    var msg = ""
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
     
        let alertController = UIAlertController(title: "Title", message: "I did it", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        
        
        self.present(alertController, animated: true, completion: nil)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
