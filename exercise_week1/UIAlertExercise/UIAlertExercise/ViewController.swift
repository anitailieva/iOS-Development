//
//  ViewController.swift
//  UIAlertExercise
//
//  Created by Anita Ilieva on 23/09/16.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let title = "A title"
        let message = "Simple message"
        let button = "Ok"
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: button, style: .default, handler: nil)
        alertController.addAction(action)
        
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

