//
//  GameViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/1/20.
//

import UIKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func playBtn(_ sender: AnyObject) {
        let mainMenu = (storyboard?.instantiateViewController(identifier: "ViewController"))!
        present(mainMenu, animated: true, completion: nil)
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
