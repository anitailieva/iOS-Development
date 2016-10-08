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
    
    @IBOutlet weak var labelTxt: UILabel!
    
    var msg: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        labelTxt.text = msg
    }
    
}
