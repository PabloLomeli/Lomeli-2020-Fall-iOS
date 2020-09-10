//
//  ThirdViewController.swift
//  miniApps
//
//  Created by Pablo Lomeli on 9/9/20.
//  Copyright © 2020 Pablo Lomeli. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var currentNum : Int = 0
    
    @IBOutlet weak var label: UILabel!

    @IBAction func counterButton(_ sender: Any) {
        currentNum = Int(label.text!)! + 1
        label.text = String(currentNum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
