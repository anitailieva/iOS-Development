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
        
       /* let url = URL(string: "http://www.facebook.com")!*/
        
        
        let url = NSURL(string: message!)
        
        if UIApplication.shared.canOpenURL(url as! URL) {
            UIApplication.shared.open(url as! URL, options: [:], completionHandler: nil)
            UIApplication.shared.open(url as! URL, options: [:], completionHandler: { (success) in
                print("Open url : \(success)")
            })
        }

    }

            override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
   }
