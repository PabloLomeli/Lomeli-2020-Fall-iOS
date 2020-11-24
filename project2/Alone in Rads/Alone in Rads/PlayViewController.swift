//
//  PlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/16/20.
//

import UIKit
import CoreData

class PlayViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerSex: UITextField!
    
    @IBAction func savePlayerData(_ sender: Any) {
        let pName = playerName.text
        let pSex = playerSex.text
        
        
        
        
        
        let detailsViewController = (storyboard?.instantiateViewController(identifier: "SecondPlayViewController"))!
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
