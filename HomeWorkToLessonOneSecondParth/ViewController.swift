//
//  ViewController.swift
//  HomeWorkToLessonOneSecondParth
//
//  Created by vladimir gennadievich on 03.01.2021.
//

import UIKit

enum TrafficLightsColors {
    case red
    case yellow
    case green
}


class ViewController: UIViewController {

    @IBOutlet var greenLightLabel: UIImageView!
    @IBOutlet var yellowLightLabel: UIImageView!
    @IBOutlet var redLightLabel: UIImageView!
    
    @IBOutlet var buttonLabel: UIButton!
    
    private var trafficLightColorNow:TrafficLightsColors = .green
    private let lightIsOn:CGFloat = 1
    private let lightIsOff:CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       buttonLabel.setTitle("START", for: .normal)
       adjustingLightsAndMakeTheyRound()
        
    }
    
    private func adjustingLightsAndMakeTheyRound() {
        greenLightLabel.layer.cornerRadius = 50
        yellowLightLabel.layer.cornerRadius = 50
        redLightLabel.layer.cornerRadius = 50
        
        redLightLabel.alpha = lightIsOff
        yellowLightLabel.alpha = lightIsOff
        greenLightLabel.alpha = lightIsOff
        
    }

    @IBAction func buttonLightAction() {
        buttonLabel.setTitle("Next", for: .normal)
        
        switch trafficLightColorNow {
        case .red:
            trafficLightColorNow = .yellow
            redLightLabel.alpha = lightIsOff
            yellowLightLabel.alpha = lightIsOn
            
        case .yellow:
            trafficLightColorNow = .green
            yellowLightLabel.alpha = lightIsOff
            greenLightLabel.alpha = lightIsOn
            
        case .green:
            trafficLightColorNow = .red
            greenLightLabel.alpha = lightIsOff
            redLightLabel.alpha = lightIsOn

        }
        
    }
    
}

