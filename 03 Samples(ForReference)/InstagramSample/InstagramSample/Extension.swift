//
//  Extension.swift
//  InstagramSample
//
//  Created by CLEE on 24/07/2017.
//  Copyright © 2017 CLEE. All rights reserved.
//

import UIKit

extension UIColor {
    
    static func rbgColor(_ red:CGFloat, _ green:CGFloat, _ blue:CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?,
                left: NSLayoutXAxisAnchor?,
                right: NSLayoutXAxisAnchor?,
                bottom: NSLayoutYAxisAnchor?,
                topConstant: CGFloat,
                leftConstant: CGFloat,
                rightConstant: CGFloat,
                bottomConstant: CGFloat,
                width: CGFloat,
                height: CGFloat,
                centerX: NSLayoutXAxisAnchor?,
                centerY: NSLayoutYAxisAnchor?)
    {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: topConstant).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: leftConstant).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -rightConstant).isActive = true
        }
        if let bottom = bottom {
            self.topAnchor.constraint(equalTo: bottom, constant: -bottomConstant).isActive = true
        }
        if width > 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height > 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
        if let centerX = centerX {
            self.centerXAnchor.constraint(equalTo: centerX).isActive = true
        }
        if let centerY = centerY {
            self.centerYAnchor.constraint(equalTo: centerY).isActive = true
        }
    }
}

extension UIStackView {
    func addArrangedSubviews(_ views:[UIView]) {
        views.forEach { (view) in
            self.addArrangedSubview(view)
        }
        
// 위 코드와 동일
//        for v in views {
//            self.addArrangedSubview(v)
//        }
    }
}


//extension UITextField {
//    static func chanhoLeeTextfield() -> UITextField {
//        let tf = UITextField()
//        tf.placeholder = "input name"
//        tf.backgroundColor = .gray
//        tf.layer.cornerRadius = 10
//        tf.textAlignment = .center
//        
//        return tf
//    }
//}