//
//  ViewController.swift
//  Lesson 2.2. UIKitApp
//
//  Created by maratmost on 24/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // MARK: Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        // MARK: LAbel
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: Slider
        
    }

    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент с индексом 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "выбран сегмент с индексом 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "выбран сегмент с индексом 2"
            mainLabel.textColor = .green
        default: break
        }
    }
}

