//
//  ViewController.swift
//  MemeMaker
//
//  Created by Denis Volkov on 14.12.2020.
//  Copyright © 2020 Denis Volkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var bottomSegmentControl: UISegmentedControl!
    
    var topChoices = [CaptionOption]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
    }
    
    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "😎", text: "You know what's cool?")
        let option2 = CaptionOption(emoji: "💥", text: "You know what makes me mad?")
        let option3 = CaptionOption(emoji: "💕", text: "You know what I love?")
        topChoices = [option1, option2, option3]
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
            
        }
        
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
    }
    
    
}

