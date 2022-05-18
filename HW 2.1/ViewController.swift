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
        redColorView.layer.cornerRadius = redColorView.layer.bounds.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.layer.bounds.width / 2
        greenColorView.layer.cornerRadius = greenColorView.layer.bounds.width / 2
        redColorView.clipsToBounds = true
        yellowColorView.clipsToBounds = true
        yellowColorView.clipsToBounds = true
        
        /* view.layer.cornerRadius = view.layer.bounds.width / 2
         view.clipsToBounds = true
         */
    }
    
    @IBAction func pressedStartToNext() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        
    }
    
}

