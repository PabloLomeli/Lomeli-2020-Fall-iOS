//
//  FirstViewController.swift
//  miniApps
//
//  Created by Pablo Lomeli on 9/3/20.
//  Copyright © 2020 Pablo Lomeli. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var displayNotes: UITextView!
    @IBOutlet weak var textToInsert: UITextField!
    
    @IBAction func enterTextBtn(_ sender: Any) {
        displayNotes.text = displayNotes.text! + textToInsert.text! + "\n"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayNotes.isEditable = false;
    }


}

