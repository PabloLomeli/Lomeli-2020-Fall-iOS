//
//  SecondPlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/23/20.
//

import UIKit

class SecondPlayViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var newP:[PlayerData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            self.newP = try context.fetch(PlayerData.fetchRequest())
        }
        catch{
            
        }
        
        let currentName = (self.newP?.last?.playername)!
        
        let updatedStory = storyLog.text.replacingOccurrences(of: "*insert name*", with: currentName)
        
        storyLog.text = updatedStory
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var storyLog: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
