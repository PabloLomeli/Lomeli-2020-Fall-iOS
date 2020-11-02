//
//  ViewController.swift
//  Alone in Rads
//
//  Created by Pablo Lomeli on 11/1/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var mainMenuArray:Array<String> = ["Play", "Set Avatar", "Start Location", "Settings", "Extras"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainMenuArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = mainMenuArray[indexPath.row]
        
        print(indexPath.row)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

            tableView.deselectRow(at: indexPath, animated: false)
            if( indexPath.row == 0){
                let detailsViewController = (storyboard?.instantiateViewController(identifier: "GameViewController"))!
                present(detailsViewController, animated: true, completion: nil)
            }
            else if( indexPath.row == 1){
                let detailsViewController = (storyboard?.instantiateViewController(identifier: "PhotoViewController"))!
                present(detailsViewController, animated: true, completion: nil)
            }
            else if( indexPath.row == 2){
                let detailsViewController = (storyboard?.instantiateViewController(identifier: "MapViewController"))!
                present(detailsViewController, animated: true, completion: nil)
            }
            else if( indexPath.row == 3){
                let detailsViewController = (storyboard?.instantiateViewController(identifier: "SettingsViewController"))!
                present(detailsViewController, animated: true, completion: nil)
            }
            else if( indexPath.row == 4){
                let detailsViewController = (storyboard?.instantiateViewController(identifier: "ExtrasViewController"))!
                present(detailsViewController, animated: true, completion: nil)
            }
        }

        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 60
        }
}

