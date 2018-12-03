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
    
    
    @IBOutlet weak var btnSurvie: UIImageView!
    @IBAction func btnSurvie (_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "DifficultyViewController") as! DifficultyViewController
        performSegue(withIdentifier: "Survie", sender: self)
        modeLabel = "Survie"
        myVC.modePassed = modeLabel
    }
    
    @IBOutlet weak var btnChrono: UIButton!
    @IBAction func btnChrono (_ sender: Any) {
        performSegue(withIdentifier: "Chrono", sender: self)
        modeLabel = "Chrono"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

