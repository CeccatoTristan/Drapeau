//
//  QuestionView.swift
//  Drapeau
//
//  Created by Sylvain Lasarte on 03/12/2018.
//  Copyright © 2018 Tristan Ceccato. All rights reserved.
//

import UIKit

class QuestionView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet{
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style){
        switch style{
        case .correct:
            icon.isHidden = false
            //icon.image = UIImage(named: "Icon Correct")
            icon.backgroundColor = UIColor(red: 200/255.0, green: 236/255.0, blue: 160/255.0,alpha: 1)
        case .incorrect:
            icon.isHidden = false
            icon.backgroundColor = UIColor(red: 243/255.0, green: 135/255.0, blue: 148/255.0,alpha: 1)
        case .standard:
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    

}
