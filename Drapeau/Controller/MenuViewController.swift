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
    
    var myInt = Int() // On declare la varaible qui vas nous servir a identifier de quelle bouton l'on vient
    
    
    @IBOutlet weak var btnSurvie: UIButton! // Declaration d'un bouton
    @IBAction func btnSurvieFunct (_ sender: Any) { // Declaration de la function liée a l'un des bouton
        let myVC = storyboard?.instantiateViewController(withIdentifier: "DifficultyViewController")
            as!DifficultyViewController //On definit myVC qui accede a la vue indiqué, ici DifficultyViewController
        
        myVC.intPassed = 1 // On attribue a la variable intPassed qui est stocké dans la vue DifficultyViewController la valeur 1
        navigationController?.pushViewController(myVC, animated: true) // Avec cette ligne cela permet de changer de vue grace a la variable myVC
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

