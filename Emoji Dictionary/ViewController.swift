//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Brian R Clowes on 2017-12-08.
//  Copyright © 2017 Brian R Clowes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojiArray = ["😀","😂","😍","🤪","☹️","🐶","🐱","🦁","💩","👅","👁"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
    }
    
    // Setup emojiTableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

