//
//  SegueViewController.swift
//  PresentModally
//
//  Created by CLEE on 30/05/2017.
//  Copyright © 2017 CLEE. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController {

    var data:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = data {
            print(name)
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}