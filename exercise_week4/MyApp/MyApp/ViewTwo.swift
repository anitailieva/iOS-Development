//
//  ViewTwo.swift
//  MyApp
//
//  Created by Anita Ilieva on 08/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import Foundation
import UIKit


class ViewTwo: UIViewController{
 
    
    @IBOutlet weak var msgTxt: UILabel!
    
    var labelText: String?
      
    override func viewDidLoad() {
       super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let message = labelText {
            msgTxt.text = message
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


