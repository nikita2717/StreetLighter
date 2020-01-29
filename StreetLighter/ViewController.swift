//
//  ViewController.swift
//  StreetLighter
//
//  Created by Никита Большаков on 29.01.2020.
//  Copyright © 2020 Bolshakov Nikita. All rights reserved.
//

import UIKit

enum CurrentLight {
    case off, red, yellow, green
}

var currentLight = CurrentLight.off

let lightIsOn :CGFloat = 1
let lightIsOff :CGFloat = 0



class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    
    @IBOutlet var yellowLight: UIView!
    
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        
        //set lighter's colors
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        //set startButton corner radius
        startButton.layer.cornerRadius = 50
        
        //set color
        redLight.backgroundColor = .red
        yellowLight.backgroundColor = .yellow
        greenLight.backgroundColor = .green
        
        //set alpha
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        
        startButton.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .off:
            redLight.alpha = lightIsOn
            currentLight = CurrentLight.red
        case .red:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = CurrentLight.yellow
        case .yellow:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = CurrentLight.green
        case .green:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = CurrentLight.red
        
        }
        
    }
    
}

