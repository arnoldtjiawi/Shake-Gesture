//
//  ViewController.swift
//  Shake-Gesture
//
//  Created by Arnold Tjiawi on 26/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LabelShake: UILabel!
    
    @IBOutlet weak var finishButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.layer.cornerRadius = finishButton.frame.size.width/2
        
        // Do any additional setup after loading the view.
        
        LabelShake.pulseL()
       
        
    }
    
    @IBAction func finishTapped(_ sender: Any) {
        view.backgroundColor = UIColor(red: 221.0/255.0, green: 214.0/255.0, blue: 70.0/255.0, alpha: 1.0)
        self.dismiss(animated: true, completion: nil)
       
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        UIView.animate(withDuration: 1) {
            self.randomizeBackground()
            self.drawCircle()
            self.LabelShake.pulseL()
            self.finishButton.pulseB1()
        }
    }
    
    func drawCircle(){
        let sizeOfView = 50
        let statusBarSize = UIApplication.shared.statusBarFrame.size
        
        let pointX = Int.random(in: 10 ..< Int(view.bounds.width) - sizeOfView - 70 )
        let pointY = Int.random(in: (Int(statusBarSize.height) + 85) ..< Int(view.bounds.height) - sizeOfView - 80)
        
        let newView = CustomView(frame: CGRect(x: pointX, y: pointY, width: 60, height: 60))
        
        newView.layer.cornerRadius = newView.frame.size.width/2
        view.addSubview(newView)
    }
    func randomizeBackground(){
        view.backgroundColor = .random()
    }
    
    

}

