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
    
    var emojiArray : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiTableView.dataSource = self
        emojiTableView.delegate = self
        emojiArray = makeEmojiArray()
        
    }
    
    // Setup emojiTableView
    
    // Answers the "How many? question"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    // Answers the "What to put in each? question"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        let emoji = emojiArray[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        
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
        defVC.emoji = sender as! Emoji
    }
    
    
    // Creting the Emoji Array using the Emoji Class
    
    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.creationYear = 2000
        emoji1.definition = "This is a Smiley Face!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😂"
        emoji2.category = "Smiley"
        emoji2.creationYear = 2001
        emoji2.definition = "This is a Laughing Face!"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😍"
        emoji3.category = "Smiley"
        emoji3.creationYear = 2002
        emoji3.definition = "This is an In Love Face!"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤪"
        emoji4.category = "Smiley"
        emoji4.creationYear = 2003
        emoji4.definition = "This is a Crazy Face!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "☹️"
        emoji5.category = "Smiley"
        emoji5.creationYear = 2004
        emoji5.definition = "This is a Sad Face!"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🐶"
        emoji6.category = "Animal"
        emoji6.creationYear = 2005
        emoji6.definition = "This is a Dog!"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🐱"
        emoji7.category = "Animal"
        emoji7.creationYear = 2006
        emoji7.definition = "This is a Cat!"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🦁"
        emoji8.category = "Animal"
        emoji8.creationYear = 2007
        emoji8.definition = "This is a Lion!"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "💩"
        emoji9.category = "Other"
        emoji9.creationYear = 2008
        emoji9.definition = "This is Poo!"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "👅"
        emoji10.category = "Body Parts"
        emoji10.creationYear = 2009
        emoji10.definition = "This is a Tongue!"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "👁"
        emoji11.category = "Body Parts"
        emoji11.creationYear = 2010
        emoji11.definition = "This is an Eye!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

