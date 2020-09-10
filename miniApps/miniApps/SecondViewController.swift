//
//  SecondViewController.swift
//  miniApps
//
//  Created by Pablo Lomeli on 9/3/20.
//  Copyright © 2020 Pablo Lomeli. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var player1Image: UIImageView!
    @IBOutlet weak var player2Image: UIImageView!
    
    var randNum1 : Int = 0
    var randNum2 : Int = 0
    
    @IBAction func player1Roll(_ sender: Any) {
        randNum1 = Int.random(in: 1...3)
        if randNum1 == 1 {
            player1Image.image = UIImage(named:"lightsaber.jpg")
        }
        if randNum1 == 2 {
            player1Image.image = UIImage(named:"rock.png")
        }
        if randNum1 == 3 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
        if randNum1 == 4 {
            player1Image.image = UIImage(named:"rock.png")
        }
        if randNum1 == 5 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
        if randNum1 == 6 {
            player1Image.image = UIImage(named:"rock.png")
        }
        if randNum1 == 7 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
        if randNum1 == 8 {
            player1Image.image = UIImage(named:"rock.png")
        }
        if randNum1 == 9 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
        if randNum1 == 10 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
        if randNum1 == 11 {
            player1Image.image = UIImage(named:"rock.png")
        }
        if randNum1 == 12 {
            player1Image.image = UIImage(named:"paper.jpg")
        }
    }
    
    @IBAction func player2Roll(_ sender: Any) {
        randNum2 = Int.random(in: 1...3)
        if randNum2 == 1 {
            player2Image.image = UIImage(named:"lightsaber.jpg")
        }
        if randNum2 == 2 {
            player2Image.image = UIImage(named:"rock.png")
        }
        if randNum2 == 3 {
            player2Image.image = UIImage(named:"paper.jpg")
        }
        if randNum2 == 4 {
            player2Image.image = UIImage(named:"lightsaber.jpg")
        }
        if randNum2 == 5 {
            player2Image.image = UIImage(named:"rock.png")
        }
        if randNum2 == 6 {
            player2Image.image = UIImage(named:"paper.jpg")
        }
        if randNum2 == 7 {
            player2Image.image = UIImage(named:"lightsaber.jpg")
        }
        if randNum2 == 8 {
            player2Image.image = UIImage(named:"rock.png")
        }
        if randNum2 == 9 {
            player2Image.image = UIImage(named:"paper.jpg")
        }
        if randNum2 == 10 {
            player2Image.image = UIImage(named:"lightsaber.jpg")
        }
        if randNum2 == 11 {
            player2Image.image = UIImage(named:"rock.png")
        }
        if randNum2 == 12 {
            player2Image.image = UIImage(named:"paper.jpg")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

