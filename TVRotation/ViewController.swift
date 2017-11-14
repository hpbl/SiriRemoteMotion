//
//  ViewController.swift
//  TVRotation
//
//  Created by Hilton Pintor Bezerra Leite on 14/11/17.
//  Copyright © 2017 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let controller = Remote.sharedInstance.controller {
            if let motion = controller.motion {
                motion.valueChangedHandler = { (motion) -> Void in
                    let angle = controller.rotation(motion: motion)
                    print(angle)
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

