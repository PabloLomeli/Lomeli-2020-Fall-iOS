//
//  PlayViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/16/20.
//

import UIKit
import CoreData

class PlayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
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
        
    }
    
    @IBOutlet weak var saveTable: UITableView!
    @IBOutlet weak var playerName: UITextField!
    @IBOutlet weak var playerSex: UITextField!
    @IBOutlet weak var playerAge: UITextField!
    
    var currentG:[GameData]?
    var currentL:[LocationData]?
    var players:[PlayerData]?
    
    // confirm button logic
    @IBAction func savePlayerData(_ sender: Any) {
        let pName = playerName.text
        let pSex = playerSex.text
        let pAge = playerAge.text
        
        let currentPlayer = PlayerData(context: self.context)
        
        // grab latest location data to use
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
    
    
    
    // player saves logic
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        
        let save = self.players![indexPath.row]
        
        cell.textLabel?.text = save.playername
        
        print(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            tableView.deselectRow(at: indexPath, animated: false)
            if( indexPath.row == 0){
                
            }
            else if( indexPath.row == 1){
                
            }
            else if( indexPath.row == 2){
                
            }
            else if( indexPath.row == 3){
                
            }
            else if( indexPath.row == 4){
                
            }
        }

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
        }
}
