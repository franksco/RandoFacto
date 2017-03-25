//
//  ViewController.swift
//  RandoFacto
//
//  Created by Cory Franks on 3/25/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RandomFact(_ sender: Any) {
        
        let array = ["The Rancor from smash-hit movie saga Star Wars was based on a cross between a bear and a potato.",
                     "Out of the millions of creatures on Earth, humans are only 1 of 3 species capable of laughter, the other 2 being chimpanzees and rats.",
                     "In Sweden, every time a Blood donor’s blood is used to save a life a text message is sent to them.",
                     "As part of a contract, J.K. Rowling (the author of the Harry Potter series) can go to Universal Studios and if anything is deemed incorrect, inaccurate, or she doesn’t like it she can get it changed.",
                     "A Mumbai thief was force-fed 48 bananas after being caught stealing a gold chain, the police ordered in the 48 piece basket and waited until the criminal could excrete the chain.",
                     "The late Steve Irwin and his whole film crew stopped filming in 2003 to aid in a 2 day search and rescue of missing divers.",
                     "In six hours, the world’s deserts receive more energy from the sun than humans consume in a year.",
                     "Hitler’s brother; Patrick William Hitler, lived in Liverpool. Patrick’s son later joined the US army during WW2.",
                     "If an object, such as stars or comets, goes to close to a black hole it will be stretched like a membrane, this is known as ‘spaghettification’.",
                     "A plane passenger once played a pirated movie during a flight, only to discover the lead actress Kriti Sanon sat beside him.",
                     "Samsung is also a full time weapons manufacturer, who apparently uses the most up to date technology to support world peace and security. And we all thought the S7 was impressive.",
                     "The human eye is so sensitive that, if the Earth were flat and it was a dark night, a candle’s flame could be seen from 30 miles away."]
        
        let RandomFact = Int(arc4random_uniform(UInt32(array.count))) //Our code to count through the array
        label.text = array[RandomFact] //Code that allows us to display the random fact that has been picked from our array by previous code
    }
    
    //Also neet trick if facts dont fit inside label and display the "..." you can go to autoshrink in storyboard, and select min font scale and adjust the value below it allowing the text to an appropriate size to fit inside label.

}

