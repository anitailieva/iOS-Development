//
//  ViewController.swift
//  Exercise3
//
//  Created by Anita Ilieva on 29/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
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

