//
//  SurvieHardViewController.swift
//  Drapeau
//
//  Created by Tristan Ceccato on 07/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit

class SurvieHardViewController: UIViewController {
    
    @IBAction func endGame (_ sender: Any) {
        let myVC = storyboard?.instantiateViewController(withIdentifier: "GameOverViewController") as! GameOverViewController
        myVC.replayCode = 13
        navigationController?.pushViewController(myVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
