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
        
        let array = ["", "", "", "", "", "", "", "", "", "", "", ""]
        
        let RandomFact = Int(arc4random_uniform(UInt32(array.count)))
        label.text = array[RandomFact]
    }

}

