//
//  FirstViewController.swift
//  Shake-Gesture
//
//  Created by Arnold Tjiawi on 26/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//
import Foundation
import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var ShakeBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
  ShakeBtn.layer.cornerRadius = ShakeBtn.frame.size.width/2
    ShakeBtn.pulseB()
    
    }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
