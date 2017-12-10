//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Brian R Clowes on 2017-12-09.
//  Copyright © 2017 Brian R Clowes. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    // Labels
    @IBOutlet weak var lblEmoji: UILabel!
    @IBOutlet weak var lblDefinition: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblCreationYear: UILabel!
    
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        lblEmoji.text = emoji.stringEmoji
        lblDefinition.text = emoji.definition
        lblCategory.text = "Category: \(emoji.category)"
        lblCreationYear.text = "Creation Year: \(emoji.creationYear)"
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
