//
//  ViewController.swift
//  Exercise2
//
//  Created by Anita Ilieva on 28/10/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var moveUp:Bool = true
    
    @IBOutlet weak var purpleBox: UIView!
   
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    

    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    @IBAction func goUp(_ sender: AnyObject) {
        
        if moveUp {
                self.moveUp = false
                self.topConstraint.constant = -74.0
                self.view.setNeedsUpdateConstraints()
                UIView.animate(withDuration: 0.3, animations: {() -> Void in
                    self.view.layoutIfNeeded()
                    
                })
            }
            else {
                self.moveUp = true
                self.topConstraint.constant = 300.0
                self.view.setNeedsUpdateConstraints()
                UIView.animate(withDuration: 0.3, animations: {() -> Void in
                    self.view.layoutIfNeeded()
                })
            }
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
        purpleBox.backgroundColor = UIColor.blue
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        
        let touch = touches.first! as UITouch
        
        if (touch.view == purpleBox){
            print("touchesBegan | This is a view")
        }else{
            print("touchesBegan | This is not an view")
        }
    }
    

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        let point = touch.location(in: purpleBox)
        print("Touch location: \(point)")
    }
    }


