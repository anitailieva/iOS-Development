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
    
    @IBAction func goTo(_ sender: AnyObject) {
        
        let url = URL(string: "http://www.facebook.com")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
            //If you want handle the completion block than
            UIApplication.shared.open(url, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }

    }

            override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
   }
