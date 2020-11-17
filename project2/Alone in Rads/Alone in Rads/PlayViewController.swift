//
//  PlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/16/20.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePlayerData(_ sender: Any) {
        let detailsViewController = (storyboard?.instantiateViewController(identifier: "StoryViewController"))!
        present(detailsViewController, animated: true, completion: nil)
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
