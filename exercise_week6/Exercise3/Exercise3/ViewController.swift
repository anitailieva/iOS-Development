//
//  ViewController.swift
//  Exercise3
//
//  Created by Anita Ilieva on 29/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var Controller: UISegmentedControl!
    @IBAction func changeLabel(_ sender: Any) {
        
        if Controller.selectedSegmentIndex == 0 {
            Label.text = "First"
        }
        
        if Controller.selectedSegmentIndex == 1 {
            Label.text = "Second"
        }
        
        if Controller.selectedSegmentIndex == 2 {
            Label.text = "Third"
        }
    }
    
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue is CustomSegue {
                (segue as! CustomSegue).animationType = .push
            }
        }


    @IBAction func click() {
        performSegue(withIdentifier: "CustomSegue", sender: nil)
    }
    
    @IBAction func unwindFromViewController(_ sender: UIStoryboardSegue) {
    }

}

