//
//  ViewController.swift
//  Simple Timer
//
//  Created by R. Kukuh on 31/03/18.
//  Copyright © 2018 R. Kukuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tick: Int = 60
    var timer = Timer()
    
    @IBOutlet weak var tickLabel: UILabel!
    @IBOutlet weak var playButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc func decreaseTick() {
        
        if tick > 0 {
            
            tick -= 1
            
            tickLabel.text = String(tick)
            
        } else {
            
            timer.invalidate()
            
            playButton.isEnabled = true
        }
    }
    
    @IBAction func playDidPress(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                     selector: #selector(decreaseTick),
                                     userInfo: nil, repeats: true)
        
        playButton.isEnabled = false
    }
    
    @IBAction func pauseDidPress(_ sender: Any) {
        timer.invalidate()
        
        playButton.isEnabled = true
    }
    
    @IBAction func minusDidPress(_ sender: Any) {
        
        if tick > 10 {
            
            tick -= 10
        }
        
        tickLabel.text = String(tick)
    }
    
    @IBAction func resetDidPress(_ sender: Any) {
        tick = 60
        tickLabel.text = String(tick)
    }
    
    @IBAction func plusDidPress(_ sender: Any) {
        tick += 10
        tickLabel.text = String(tick)
    }
}
