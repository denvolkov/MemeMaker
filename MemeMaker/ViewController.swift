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
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var bottomSegmentControl: UISegmentedControl!
    
    var topChoices: [CaptionOption] = []
    var bottomChoices: [CaptionOption] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTopSegmentControl()
        configureBottomSegmentControl()
        selectInitValues()
    }
    
    func configureTopSegmentControl() {
        topCaptionSegmentControl.removeAllSegments()
        
        let option1 = CaptionOption(emoji: "😎", text: "You know what's cool?", imageName: "Bee")
        let option2 = CaptionOption(emoji: "💥", text: "You know what makes me mad?", imageName: "bee2")
        let option3 = CaptionOption(emoji: "💕", text: "You know what I love?", imageName: "bee3")
        topChoices = [option1, option2, option3]
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
    }
    
    func configureBottomSegmentControl() {
        bottomSegmentControl.removeAllSegments()
        
        let option4 = CaptionOption(emoji: "🐱", text: "Cats wearing hats", imageName: "bee4")
        let option5 = CaptionOption(emoji: "🐶", text: "Dogs carrying logs", imageName: "bee5")
        let option6 = CaptionOption(emoji: "🙈", text: "Monkeys being funky", imageName: "bee6")
        bottomChoices = [option4, option5, option6]
        
        for choice in bottomChoices {
            bottomSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
            
        }
    }
    
    func selectInitValues() {
        topCaptionSegmentControl.selectedSegmentIndex = 0
        bottomSegmentControl.selectedSegmentIndex = 0
        topLabel.text = topChoices.first?.text
        bottomLabel.text = bottomChoices[0].text
        mainImageView.image = UIImage(named: topChoices[0].imageName)
    }
    
    @IBAction func topSegmentValueChanged(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.text
        mainImageView.image = UIImage(named: currentChoice.imageName)
// Opion via transfer for the top segment
        //        switch sender.selectedSegmentIndex {
        //        case 0:
        //            mainImageView.image = UIImage (named: "Bee")
        //        case 1:
        //            mainImageView.image = UIImage (named: "bee2")
        //        case 2:
        //            mainImageView.image = UIImage (named: "bee3")
        //        default:
        //            mainImageView.image = nil
    }
    





@IBAction func bottomSegmentValueChanged(_ sender: UISegmentedControl) {
    let currentChoice = bottomChoices[sender.selectedSegmentIndex]
    bottomLabel.text = currentChoice.text
    mainImageView.image = UIImage(named: currentChoice.imageName)
// Opion via transfer for the bottom segment
    //        switch sender.selectedSegmentIndex {
    //        case 0:
    //            mainImageView.image = UIImage (named: "Bee")
    //        case 1:
    //            mainImageView.image = UIImage (named: "bee2")
    //        case 2:
    //            mainImageView.image = UIImage (named: "bee3")
    //
    //        default:
    //            mainImageView.image = nil
}
}

