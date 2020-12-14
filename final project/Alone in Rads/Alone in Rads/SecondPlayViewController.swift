//
//  SecondPlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/23/20.
//

import UIKit

class SecondPlayViewController: UIViewController {

    @IBAction func saveExit(_ sender: Any) {
        performSegue(withIdentifier: "saveExit", sender: self)
    }

    var number = 0
    
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
        
        // updates story text
        let updatedStory = storyLog.text.replacingOccurrences(of: "*insert name*", with: currentName)
        let updatedStory2 = updatedStory.replacingOccurrences(of: "*insert location*", with: currentLoc)
        storyLog.text = updatedStory2
        
        scrollTextViewToBottom(textView: storyLog)
        // player health
        let updatedPlayerHealth = playerHealth.text?.replacingOccurrences(of: "X", with: "3")
        playerHealth.text = updatedPlayerHealth
        
        // scenario rng
        number = Int.random(in: 1...4)
    }
    
    func scrollTextViewToBottom(textView: UITextView) {
        if textView.text.count > 0 {
            let location = textView.text.count
            let bottom = NSMakeRange(location, 1)
            textView.scrollRangeToVisible(bottom)
        }
    }
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var newP:[PlayerData]?
    
    var newG:[GameData]?
    
    @IBOutlet weak var storyLog: UITextView!
    
    @IBOutlet weak var playerHealth: UILabel!
    @IBOutlet weak var choice1label: UILabel!
    @IBOutlet weak var choice2label: UILabel!
    @IBOutlet weak var choice3label: UILabel!
    @IBOutlet weak var choice4label: UILabel!
    
    var choiceLocations = ["Coffee Shop", "Police Station", "Library", "Hospital",
                           "Military Base", "Food Market", "Gas Station", "Train Station",
                            "Gun Store", "Hardware Store", "Abandoned Warehouse", "Movie Store",
                            "Used Car Lot", "Car Dealership", "High School", "Shopping Mall"]
    
    // game logic for choosing a path
    @IBAction func choice1(_ sender: Any) {
        let string = "adding filler text to test this."
        storyLog.text.append(string)
        scrollTextViewToBottom(textView: storyLog)
        
        if(number == 1) {
            
        }
        else {
            
        }
        
    }
    
    @IBAction func choice2(_ sender: Any) {
        if(number == 2) {
            
        }
        else {
            
        }
    }
    
    @IBAction func choice3(_ sender: Any) {
        if(number == 3) {
            
        }
        else {
            
        }
    }
    
    @IBAction func choice4(_ sender: Any) {
        if(number == 4) {
            
        }
        else {
            
        }
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
