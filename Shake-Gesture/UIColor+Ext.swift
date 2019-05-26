//
//  UIColor+Ext.swift
//  Shake-Gesture
//
//  Created by Arnold Tjiawi on 26/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import Foundation
import UIKit

extension UIColor{
    static func random() -> UIColor{
        let red     = CGFloat.random(in: 0.4...1.0)
        let green   = CGFloat.random(in: 0.4...1.0)
        let blue    = CGFloat.random(in: 0.4...1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
extension UILabel{
    
    func pulseL(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.5
        pulse.fromValue = 0.8
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 3
        pulse.initialVelocity = 1
        pulse.damping = 1.0
        layer.add(pulse, forKey: nil)
    }
}
