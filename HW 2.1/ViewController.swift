//
//  ViewController.swift
//  HW 2.1
//
//  Created by Rose on 18.05.2022.
//

import UIKit

enum CurrentLights {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLights.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        redColorView.alpha = lightIsOff
        yellowColorView.alpha = lightIsOff
        greenColorView.alpha = lightIsOff
        
        print("Размер стороны, доступный в методе viewDidLoad: \(redColorView.frame.height)")
    }
    
    override func viewDidLayoutSubviews() {
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        
        print("Размер стороны, доступный в методе viewDidLayoutSubviews: \(redColorView.frame.height)")
    }
    @IBAction func pressedStartToNext() {
        
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenColorView.alpha = lightIsOff
            redColorView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lightIsOff
            yellowColorView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenColorView.alpha = lightIsOn
            yellowColorView.alpha = lightIsOff
            currentLight = .red
        }
    }
    
}

