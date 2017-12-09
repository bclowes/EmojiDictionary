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
    
    // Answers the "How many? question"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    // Answers the "What to put in each? question"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }

    // Opens 2nd view controllor when emoji is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "largeSized", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! String
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

