//
//  ViewController.swift
//  Exercise2
//
//  Created by Anita Ilieva on 08/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!
   
    @IBAction func sendMessage(_ sender: AnyObject) {
        if let receivingViewController = storyboard?.instantiateViewController(withIdentifier: "receivingVC")as? ReceiveViewController {
    
            // Setter property på destination vc
    receivingViewController.msg = messageTextField.text!
    // Før den vises
    present(receivingViewController, animated: false, completion: nil)
        
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    }


