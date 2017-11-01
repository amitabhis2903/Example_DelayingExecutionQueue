//
//  ViewController.swift
//  Example_DelayingExecutionQueue
//
//  Created by Ammy Pandey on 14/08/17.
//  Copyright © 2017 Ammy Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        delayingQueue()
    }
    
    
    
    func delayingQueue(){
        let delayQueue = DispatchQueue(label: "com.load.web", qos: .userInteractive)
        print(Date())
        
        let additionalTime: DispatchTimeInterval = .seconds(2)
        
        delayQueue.asyncAfter(deadline: .now() + additionalTime) { 
            print(Date())
        }
    }
    
}

