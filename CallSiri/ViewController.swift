//
//  ViewController.swift
//  CallSiri
//
//  Created by Dante Solorio on 7/14/16.
//  Copyright © 2016 Dante Solorio. All rights reserved.
//

import UIKit
import CallSiriFramework
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        INPreferences.requestSiriAuthorization { (status) in
            print("Siri auth: \(status.rawValue)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

