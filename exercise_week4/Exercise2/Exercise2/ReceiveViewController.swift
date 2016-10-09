//
//  ReceiveViewController.swift
//  Exercise2
//
//  Created by Anita Ilieva on 08/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import Foundation
import UIKit

class ReceiveViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    var message: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.title = "Les melding"
        
        if let msgText = message {
            labelText.text = msgText
        }
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
   }
