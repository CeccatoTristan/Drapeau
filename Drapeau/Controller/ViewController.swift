//
//  ViewController.swift
//  Drapeau
//
//  Created by Tristan Ceccato on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    
    @IBOutlet weak var btnSurvie: UIImageView!
    
    @IBOutlet weak var btnChrono: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnChrono.layer.borderWidth = 10
        btnChrono.layer.shadowOpacity = 0.25
        btnChrono.layer.shadowRadius = 5
        btnChrono.layer.shadowOffset = CGSize(width: 0, height: 10)
    }


}

