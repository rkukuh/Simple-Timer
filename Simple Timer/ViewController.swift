//
//  ViewController.swift
//  Simple Timer
//
//  Created by R. Kukuh on 31/03/18.
//  Copyright © 2018 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    @objc func printToConsole() {
        print("Tulisan ini muncul setiap 2 detik sekali")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 2,
                                     target: self,
                                     selector: #selector(printToConsole),
                                     userInfo: nil,
                                     repeats: true)
    }

}
