//
//  ViewController.swift
//  HW 2.1
//
//  Created by Rose on 18.05.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 10
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        
    }
    
    @IBAction func pressedStartToNext() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        
    }
    
}

