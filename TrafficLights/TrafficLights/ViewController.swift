//
//  ViewController.swift
//  TrafficLights
//
//  Created by Mark on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redCollorView: UIView!
    @IBOutlet var yellowCollorView: UIView!
    @IBOutlet var greenCollorView: UIView!
    @IBOutlet var nameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        settingBacground()
    }

    func settingBacground() {
        nameButton.setTitle("START", for: .normal)
        nameButton.backgroundColor = .purple
        nameButton.tintColor = .black
        nameButton.layer.cornerRadius = 10
        
        redCollorView.backgroundColor = .red
        redCollorView.alpha = 0.3
        redCollorView.layer.cornerRadius = 100
        
        yellowCollorView.backgroundColor = .yellow
        yellowCollorView.alpha = 0.3
        yellowCollorView.layer.cornerRadius = 100
        
        greenCollorView.backgroundColor = .green
        greenCollorView.alpha = 0.3
        greenCollorView.layer.cornerRadius = 100
    }

    @IBAction func startButton(_ sender: UIButton) {
        
    }
}

