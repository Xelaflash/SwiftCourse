//
//  QuestionView.swift
//  Quizzy
//
//  Created by iFlash on 04/02/2019.
//  Copyright © 2019 iFlash. All rights reserved.
//

import UIKit

class QuestionView: UIView {
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var title = "" {
        didSet {
//            modification de la question ici
            label.text = title
        }
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
            case .correct:
    //            2 versions using UIColor or Color Literal
    //             backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1) // Vert
                backgroundColor = #colorLiteral(red: 0, green: 0.8385797143, blue: 0.6182498932, alpha: 1)
                icon.image = UIImage(named: "Icon Correct")
                icon.isHidden = false
            case .incorrect:
    //             backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1) // Rouge
                backgroundColor = #colorLiteral(red: 1, green: 0.2546873391, blue: 0.2968834937, alpha: 1)
                icon.image = UIImage(named: "Icon Incorrect")
                icon.isHidden = false
            case .standard:
    //            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1) // Gris
                backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
                icon.isHidden = true
        }
    }
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
}
