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
    @IBOutlet weak var playerAge: UITextField!
    
    var currentG:[GameData]?
    var currentL:[LocationData]?
    
    @IBAction func savePlayerData(_ sender: Any) {
        let pName = playerName.text
        let pSex = playerSex.text
        let pAge = playerAge.text
        
        let currentPlayer = PlayerData(context: self.context)
        
        // grab latest game data to use
        do {
            self.currentL = try context.fetch(LocationData.fetchRequest())
        }
        catch{
            
        }
        
        let newG = GameData(context: self.context)
        
        if(currentL?.last?.fullLocation != nil){
            newG.gamelocation = currentL?.last?.fullLocation
        }
         else
        {
            newG.gamelocation = "(Please choose 'Set Location' in main menu on a new save)"
        }
        
        currentPlayer.playername = pName
        currentPlayer.playersex = pSex
        currentPlayer.playerage = pAge
        
        try! self.context.save()
        
        let detailsViewController = (storyboard?.instantiateViewController(identifier: "SecondPlayViewController"))!
        present(detailsViewController, animated: true, completion: nil)
    }
    
    @IBAction func continueWOC(_ sender: Any) {
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
