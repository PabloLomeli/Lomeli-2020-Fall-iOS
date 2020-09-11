//
//  FourthViewController.swift
//  miniApps
//
//  Created by Pablo Lomeli on 9/11/20.
//  Copyright © 2020 Pablo Lomeli. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var fireOut1 : Bool = false
    var fireOut2 : Bool = false
    var fireOut3 : Bool = false
    var fireOut4 : Bool = false
    var fireOut5 : Bool = false
    var fireOut6 : Bool = false
    var fireOut7 : Bool = false
    var fireOut8 : Bool = false
    var fireOut9 : Bool = false
    var fireOut10 : Bool = false
    @IBOutlet weak var putOutFireLabel: UILabel!
    @IBOutlet weak var titleFireLabel: UILabel!
    
    @IBAction func fireBtn1(_ sender: UIButton) {
        sender.isHidden = true
        fireOut1 = true
        checkFire()
    }
    
    @IBAction func fireBtn2(_ sender: UIButton) {
        sender.isHidden = true
        fireOut2 = true
        checkFire()
    }
    
    @IBAction func fireBtn3(_ sender: UIButton) {
        sender.isHidden = true
        fireOut3 = true
        checkFire()
    }
    
    @IBAction func fireBtn4(_ sender: UIButton) {
        sender.isHidden = true
        fireOut4 = true
        checkFire()
    }
    
    @IBAction func fireBtn5(_ sender: UIButton) {
        sender.isHidden = true
        fireOut5 = true
        checkFire()
    }
    
    @IBAction func fireBtn6(_ sender: UIButton) {
        sender.isHidden = true
        fireOut6 = true
        checkFire()
    }
    
    @IBAction func fireBtn7(_ sender: UIButton) {
        sender.isHidden = true
        fireOut7 = true
        checkFire()
    }
    
    @IBAction func fireBtn8(_ sender: UIButton) {
        sender.isHidden = true
        fireOut8 = true
        checkFire()
    }
    
    @IBAction func fireBtn9(_ sender: UIButton) {
        sender.isHidden = true
        fireOut9 = true
        checkFire()
    }
    
    @IBAction func fireBtn10(_ sender: UIButton) {
        sender.isHidden = true
        fireOut10 = true
        checkFire()
    }
    
    func checkFire() {
        if(fireOut10 == true && fireOut9 == true && fireOut8 == true && fireOut7 == true
            && fireOut6 == true && fireOut5 == true && fireOut4 == true && fireOut3 == true
            && fireOut2 == true && fireOut1 == true)
        {
            putOutFireLabel.isHidden = false
            titleFireLabel.isHidden = true
        }
        else
        {
            putOutFireLabel.isHidden = true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        putOutFireLabel.isHidden = true
        // Do any additional setup after loading the view.
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
