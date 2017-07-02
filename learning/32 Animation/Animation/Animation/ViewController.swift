//
//  ViewController.swift
//  Animation
//
//  Created by CLEE on 29/06/2017.
//  Copyright © 2017 CLEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sampeView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionButton(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3,
                       delay: 0.5,
                       options: [.curveEaseIn,.autoreverse],
                       animations: {var newFrame = self.sampeView.frame
//                                    newFrame.origin.x += 200
                                    self.sampeView.frame = newFrame
        })
        
//        UIView.animate(withDuration: 1,
//                       delay: 0,
//                       dampingRatio: 0.4,
//                       velocity: 0.9,
//                       options: [.curveLinear],
//                       animations: { self.sampeView.layer.transform = CATransform3DMakeScale(3, 3, 1)
//        }) { (isEnd) in
//            self.imgView.layer.transform = CATransform
//        }

        UIView.animate(withDuration: 1, animations: {
            //CATransform3DMakeRotation(R값, x, y, z) <-- x,y,z는 회전 축
            self.sampeView.layer.transform = CATransform3DMakeRotation(360*180/3.14, 0, 0, 1)
            self.sampeView.alpha = 0.5
        }) {(isEnd) in
            UIView.animate(withDuration: 0.3, animations: {
                self.sampeView.layer.transform = CATransform3DMakeScale(1, 1, 1)
                self.sampeView.alpha = 1
            }, completion: nil)
        
        
        }
    
    }
    
}
