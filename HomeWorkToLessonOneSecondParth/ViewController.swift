//
//  ViewController.swift
//  HomeWorkToLessonOneSecondParth
//
//  Created by vladimir gennadievich on 03.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greenLightLabel: UIImageView!
    @IBOutlet var yellowLightLabel: UIImageView!
    @IBOutlet var redLightLabel: UIImageView!
    
    @IBOutlet var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       buttonLabel.setTitle("START", for: .normal)
       adjustingLightsAndMakeTheyRound()
        
    }
    
    private func adjustingLightsAndMakeTheyRound() {
        greenLightLabel.layer.cornerRadius = 50
        yellowLightLabel.layer.cornerRadius = 50
        redLightLabel.layer.cornerRadius = 50
        
    }

    @IBAction func buttonLightAction() {
        
    }
    
}

