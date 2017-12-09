//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Brian R Clowes on 2017-12-09.
//  Copyright © 2017 Brian R Clowes. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var lblEmoji: UILabel!
    
    @IBOutlet weak var lblDefinition: UILabel!
    
    var emoji = "No Emoji"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lblEmoji.text = emoji
        
        
        if emoji == "😀" {
            lblDefinition.text = "This is a Happy Face"
        }
        
        if emoji == "😂" {
            lblDefinition.text = "This is a Lughing Face"
        }
        
        if emoji == "😍" {
            lblDefinition.text = "This is a Loving Face"
        }
        if emoji == "🤪" {
            lblDefinition.text = "This is a Crazy Face"
        }
        
        if emoji == "☹️" {
            lblDefinition.text = "This is a Sad Face"
        }
        
        if emoji == "🐶" {
            lblDefinition.text = "This is a Dog"
        }
        
        if emoji == "🐱" {
            lblDefinition.text = "This is a Cat"
        }
        if emoji == "🦁" {
            lblDefinition.text = "This is a Lion"
        }
        if emoji == "💩" {
            lblDefinition.text = "This is some Poo"
        }
        if emoji == "👅" {
            lblDefinition.text = "This is a Tongue"
        }
        if emoji == "👁" {
            lblDefinition.text = "This is an Eye"
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
