//
//  ViewController.swift
//  swiftBook HM1 (2)
//
//  Created by Sergey Zakurakin on 23/01/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    @IBOutlet weak var changeLightButton: UIButton!
    
    
    let lightOn: CGFloat = 1
    let lightOff: CGFloat = 0.2
    
    var count = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lightConfigure()
        
        
        
    }
    
    
    
    @IBAction func changeActionButton(_ sender: UIButton) {
        
        
        switch count {
        case 0:
            redLightLabel.alpha = lightOn
            yellowLightLabel.alpha = lightOff
            greenLightLabel.alpha = lightOff
            count = 1
        case 1:
            redLightLabel.alpha = lightOff
            yellowLightLabel.alpha = lightOn
            greenLightLabel.alpha = lightOff
            count = 2
        case 2:
            redLightLabel.alpha = lightOff
            yellowLightLabel.alpha = lightOff
            greenLightLabel.alpha = lightOn
            count = 0
        default:
            break
        }
        
    }
    
    
    
    
    
    
    func lightConfigure() {
        
        redLightLabel.layer.cornerRadius = 75
        yellowLightLabel.layer.cornerRadius = 75
        greenLightLabel.layer.cornerRadius = 75
        changeLightButton.layer.cornerRadius = 15
        
        redLightLabel.alpha = 0.2
        yellowLightLabel.alpha = 0.2
        greenLightLabel.alpha = 0.2
        
        view.backgroundColor = .black
        
    }
    
 
    
    
}

