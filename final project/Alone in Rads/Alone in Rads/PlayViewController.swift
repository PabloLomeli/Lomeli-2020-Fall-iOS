//
//  PlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/16/20.
//

import UIKit
import CoreData

class PlayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func returnMenu(_ sender: Any) {
        performSegue(withIdentifier: "mainMenu", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        saveTable.dataSource = self
        saveTable.delegate = self
        
        do {
            self.players = try context.fetch(PlayerData.fetchRequest())
            
            //reload save table
            DispatchQueue.main.async {
                self.saveTable.reloadData()
            }
        }
        catch{
            
        }
        
        if(players?.last?.playername != nil){
            continueButton.isEnabled = true;
        }
    }
    
    @IBOutlet weak var continueButton: UIButton!
    
    @IBOutlet weak var saveTable: UITableView!
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerSex: UITextField!
    @IBOutlet weak var playerAge: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var currentG:[GameData]?
    var currentL:[LocationData]?
    var players:[PlayerData]?
    
    // confirm button logic
    @IBAction func savePlayerData(_ sender: Any) {
        let pName = playerName.text
        let pSex = playerSex.text
        let pAge = playerAge.text
        
        let currentPlayer = PlayerData(context: self.context)
        
        let newG = GameData(context: self.context)
        
        // grab latest location data to use
        do {
            self.currentL = try context.fetch(LocationData.fetchRequest())
        }
        catch{
            
        }
        
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
        
        currentPlayer.currentGame = newG
        
        try! self.context.save()
        
        let detailsViewController = (storyboard?.instantiateViewController(identifier: "SecondPlayViewController"))!
        present(detailsViewController, animated: true, completion: nil)
    }
    
    // continue button
    @IBAction func continueWOC(_ sender: Any) {
        let detailsViewController = (storyboard?.instantiateViewController(identifier: "SecondPlayViewController"))!
        present(detailsViewController, animated: true, completion: nil)
    }
    
    // player saves table logic
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players?.count ?? 0
    }
    
    // player saves loaded onto table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let save = self.players![indexPath.row]
        
        cell.textLabel?.text = save.playername
        
        print(indexPath.row)
        return cell
    }
    
    // player saves load
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            tableView.deselectRow(at: indexPath, animated: false)
            // need to add save selection functionality
        }

    // size of rows
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
