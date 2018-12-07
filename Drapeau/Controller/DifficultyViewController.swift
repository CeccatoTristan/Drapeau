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
    var intPassed = Int()
    
    @IBOutlet weak var btnFacile: UIButton!
    
    @IBAction func FunctionEasy(_ sender: Any) {
        
         if(intPassed == 1){
       
            let myVC = storyboard?.instantiateViewController(withIdentifier: "SurvieEasyViewController") as! SurvieEasyViewController
            navigationController?.pushViewController(myVC, animated: true)
         
          }
            
            else if (intPassed == 2){
                
         let myVC = storyboard?.instantiateViewController(withIdentifier: "ChronoEasyViewController") as! ChronoEasyViewController
         navigationController?.pushViewController(myVC, animated: true)
            
         }
    }

    @IBOutlet weak var btnMoyen: UIButton!
    
    @IBAction func FunctionMedium(_ sender: Any) {
        
        if(intPassed == 1){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "SurvieMediumViewController") as! SurvieMediumViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
            
        else if (intPassed == 2){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "ChronoMediumViewController") as! ChronoMediumViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
    }
    
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
