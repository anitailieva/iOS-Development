//
//  ViewController.swift
//  Exercise2
//
//  Created by Anita Ilieva on 08/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dataTextField: UITextField!

       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dataSegue" {
            let receivingViewController = segue.destination as? ReceivingViewController
            if let svc = receivingViewController {
                svc.message = dataTextField.text
            }
            
            if segue.identifier == "destinationSegue" {
                let destinationViewController = segue.destination as? DestinationViewController
                if let dv = destinationViewController {
                    dv.msg = dataTextField.text!
                }
            }
            

        }

    }
    

    
    /*
     @IBAction func sendMessage(_ sender: AnyObject) {
     if let receivingViewController = storyboard?.instantiateViewController(withIdentifier: "ReceiveViewController")as? ReceiveViewController {
     
     // Setter property på destination vc
     receivingViewController.message = dataTextField.text!
     // Før den vises
     present(receivingViewController, animated: true, completion: nil)
     
     }
 */
    
    
  
}

