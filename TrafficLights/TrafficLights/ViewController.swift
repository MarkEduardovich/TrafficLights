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
        
        yellowCollorView.backgroundColor = .yellow
        yellowCollorView.alpha = 0.3
        
        greenCollorView.backgroundColor = .green
        greenCollorView.alpha = 0.3
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        redCollorView.layer.cornerRadius = redCollorView.frame.height / 2
        yellowCollorView.layer.cornerRadius = yellowCollorView.frame.height / 2
        greenCollorView.layer.cornerRadius = greenCollorView.frame.height / 2

    }

    @IBAction func startButton(_ sender: UIButton) {
        nameButton.setTitle("NEXT", for: .normal)
        if redCollorView.alpha != 1 && yellowCollorView.alpha != 1 && greenCollorView.alpha != 1 {
            redCollorView.alpha = 1
        } else {
            if redCollorView.alpha == 1 {
                redCollorView.alpha = 0.3
                yellowCollorView.alpha = 1
            } else {
                if yellowCollorView.alpha == 1 {
                    yellowCollorView.alpha = 0.3
                    greenCollorView.alpha = 1
                } else {
                    greenCollorView.alpha = 0.3
                    redCollorView.alpha = 1
                }
            }
        }
    }
}

