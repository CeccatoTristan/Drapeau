//
//  GameOverViewController.swift
//  Drapeau
//
//  Created by Tristan Ceccato on 10/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {
    
    var replayCode = Int()
    
    @IBAction func Replay (_ sender: Any) {
        
        if(replayCode == 11){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "SurvieEasyViewController") as! SurvieEasyViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
            
        else if (replayCode == 12){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "SurvieMediumViewController") as! SurvieMediumViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
        else if (replayCode == 13){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "SurvieHardViewController") as! SurvieHardViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
            
        else if (replayCode == 21){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "ChronoEasyViewController") as! ChronoEasyViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
            
        else if (replayCode == 22){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "ChronoMediumViewController") as! ChronoMediumViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
            
        else if (replayCode == 23){
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "ChronoHardViewController") as! ChronoHardViewController
            navigationController?.pushViewController(myVC, animated: true)
            
        }
    }

    @IBAction func menu(_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        navigationController?.pushViewController(myVC, animated: true)
    }
    
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
