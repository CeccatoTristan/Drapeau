//
//  ViewController.swift
//  Drapeau
//
//  Created by Tristan Ceccato on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit



class MenuViewController: UIViewController {

    var modeLabel: String = ""
    
    var myInt = Int()
    @IBOutlet weak var btnSurvie: UIButton!
    
    
    @IBAction func btnSurvieFunct (_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "DifficultyViewController") as! DifficultyViewController
        myInt = 1
        myVC.intPassed = myInt
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    @IBOutlet weak var btnChrono: UIButton!
    @IBAction func btnChronoFunct (_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "DifficultyViewController") as! DifficultyViewController
        myInt = 2
        myVC.intPassed = myInt
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

