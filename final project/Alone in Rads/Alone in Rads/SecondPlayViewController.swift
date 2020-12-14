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
        
        // player health
        //let updatedPlayerHealth = playerHealth.text?.replacingOccurrences(of: "X", with: "3")
        //playerHealth.text = updatedPlayerHealth
        
        scrollTextViewToBottom(textView: storyLog)
        
        setLocChoice()
        locationSeg = true
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
    
    @IBOutlet weak var choice1btn: UIButton!
    @IBOutlet weak var choice2btn: UIButton!
    @IBOutlet weak var choice3btn: UIButton!
    @IBOutlet weak var choice4btn: UIButton!
    
    var choiceLocations = ["Coffee Shop", "Police Station", "Library", "Hospital",
                           "Military Base", "Food Market", "Gas Station", "Train Station",
                            "Gun Store", "Hardware Store", "Abandoned Warehouse", "Movie Store",
                            "Used Car Lot", "Car Dealership", "High School", "Shopping Mall"]
    
    var storyPeople = ["Police Officer", "Army Soldier", "lone Raider", "cultist",
                       "Preacher", "surviving father and his son", "small gang"]
    
    var interactionChoices = ["Fight", "Chat", "Steal", "Run away"]
    
    // want to implement losing health points depending on which action happens rng based
    var fightResults = ["you end up beating them senseless.",
                        "you are overwhelmed by their strength and are hurt badly.",
                        "you are able to wound him and make him surrender.",
                        "you meet at a stalemate and agree to part ways.",
                        "you underestimated his power level and become completely terminated."]
    
    var chatResults = ["you strike up a conversation and end up befriending them and get a free meal out of it.",
                       "you tell a very bad joke and get the most awkward silence that you can't take and get terminated.",
                       "you end up having a good interaction and decide that you should give them some of your supplies since they're struggling.",
                       "you converse purfusely until they die from how many words came out of you mouth."]
    
    var stealResults = ["you approach the target and as you go in for the pick pocketing, another person spots you and asks what you're doing, you respond with, nothing just checking pockets and they let you off the hook because they were too busy laughing at how badly the excuse you came up with was.",
                        "you end up stealing their priceless loot and get away with the best goodies you've ever seen.",
                        "you get close to the victim and end up giving him a big sniff so you end up tipping him off and get terminated.",
                        "you've learned how to mimic a cat when tip toeing towards someone and no one is none the wiser that they have been robbed."]
    
    var evadeResults = ["you mange to escape safely and leave no trace of your existence.",
                        "you sneak around towards the back of the building and end up being spotted and get immediately terminated.",
                        "you get to a nice hiding spot and are able to stay until they leave.",
                        "you yell at the top of your lungs and in the disarry and confusion set by your girly voice you are able to me a heist level get away."]
    
    var locationSeg = false
    var npcSeg = false
    
    var currentNPC = ""
    
    func endstory(){
        storyLog.text.append("\n\n You have died and you can no longer make choices.")
        scrollTextViewToBottom(textView: storyLog)
        
        choice1btn.isEnabled = false
        choice2btn.isEnabled = false
        choice3btn.isEnabled = false
        choice4btn.isEnabled = false
    }
    
    func continueStory(s: String) {
        if(locationSeg == true) {
            storyPeople.shuffle()
            var string1 = "\n\nYou see a "
            currentNPC = storyPeople[0]
            string1.append(storyPeople[0])
            string1.append(", what will you do?")
            storyLog.text.append(string1)
            scrollTextViewToBottom(textView: storyLog)
            
            setIntChoice()
            locationSeg = false
            npcSeg = true
        }
        
        else if(npcSeg == true) {
            fightResults.shuffle()
            var string = ""
            if(s.contains("Fight")){
                string = "\n\nYou decide to fight and "
                string.append(fightResults[0])
            }
            else if(s.contains("Chat")){
                string = "\n\nYou decide to chat and "
                string.append(chatResults[0])
            }
            else if(s.contains("Steal")){
                string = "\n\nYou decide to steal and "
                string.append(stealResults[0])
            }
            else if(s.contains("Run away")){
                string = "\n\nYou decide to run away and "
                string.append(evadeResults[0])
            }
            
            if(string.contains("terminated")){
                endstory()
            }
            else {
                string.append(" After dealing with a ")
                string.append(currentNPC)
                string.append(" you decide its time to head into a ")
                storyLog.text.append(string)
                scrollTextViewToBottom(textView: storyLog)
                
                setLocChoice()
                npcSeg = false
                locationSeg = true
            }
        }
        
        scrollTextViewToBottom(textView: storyLog)
    }
    
    func setLocChoice() {
        choiceLocations.shuffle()
        choice1label.text = choiceLocations[0]
        choice2label.text = choiceLocations[1]
        choice3label.text = choiceLocations[2]
        choice4label.text = choiceLocations[3]
    }
    
    func setIntChoice() {
        choice1label.text = interactionChoices[0]
        choice2label.text = interactionChoices[1]
        choice3label.text = interactionChoices[2]
        choice4label.text = interactionChoices[3]
    }
    
    // game logic for choosing a path
    @IBAction func choice1(_ sender: Any) {
        if(npcSeg != true) {
            storyLog.text.append(choice1label.text!)
            storyLog.text.append(". ")
        }
        scrollTextViewToBottom(textView: storyLog)
        continueStory(s: choice1label.text!)
    }
    
    @IBAction func choice2(_ sender: Any) {
        if(npcSeg != true) {
            storyLog.text.append(choice2label.text!)
            storyLog.text.append(". ")
        }
        scrollTextViewToBottom(textView: storyLog)
        continueStory(s: choice2label.text!)
    }
    
    @IBAction func choice3(_ sender: Any) {
        if(npcSeg != true) {
            storyLog.text.append(choice3label.text!)
            storyLog.text.append(". ")
        }
        scrollTextViewToBottom(textView: storyLog)
        continueStory(s: choice3label.text!)
    }
    
    @IBAction func choice4(_ sender: Any) {
        if(npcSeg != true) {
            storyLog.text.append(choice4label.text!)
            storyLog.text.append(". ")
        }
        scrollTextViewToBottom(textView: storyLog)
        continueStory(s: choice4label.text!)
    }

}
