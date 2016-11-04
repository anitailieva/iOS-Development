//
//  ViewController.swift
//  Exercise5
//
//  Created by Anita Ilieva on 04/11/2016.
//  Copyright © 2016 Anita Ilieva. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad()
{   super.viewDidLoad()
    
    Alamofire.request("https://jsonplaceholder.typicode.com/posts").responseJSON { (response:DataResponse<Any>) in
        
        switch(response.result) {
        case .success(_):
            if response.result.value != nil{
                print(response.result.value!)
            }
            break
            
        case .failure(_):
            print(response.result.error as Any)
            break
            
        }
        
    }
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
