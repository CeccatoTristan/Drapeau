//
//  SecondViewController.swift
//  Drapeau
//
//  Created by Tristan Ceccato on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit

class DifficultyViewController: UIViewController {
    
    var modePassed : String = ""
    
    @IBOutlet weak var btnFacile: UIButton!
    
    @IBAction func btnFacile (sender: Any) {
        
      //  if(modePassed == "Survie"){
            
                
            performSegue(withIdentifier: "ChronoEasy", sender: self)
            
            
      //  }
    }
    
    @IBOutlet weak var btnMoyen: UIButton!
    
    @IBOutlet weak var btnDifficile: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
