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
    
    var newG:[GameData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // grab playerdata to load
        do {
            self.newP = try context.fetch(PlayerData.fetchRequest())
            self.newG = try context.fetch(GameData.fetchRequest())
        }
        catch{
            
        }
        
        let currentName = (self.newP?.last?.playername)!
        
        let currentLoc = (self.newG?.last?.gamelocation)!
        
        let updatedStory = storyLog.text.replacingOccurrences(of: "*insert name*", with: currentName)
        
        let updatedStory2 = updatedStory.replacingOccurrences(of: "*insert location*", with: currentLoc)
        
        storyLog.text = updatedStory2
         
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
