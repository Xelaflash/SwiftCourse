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
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style) {
        switch style {
        case .correct:
//            backgroundColor = UIColor(red: 200.0/255.0, green: 236.0/255.0, blue: 160.0/255.0, alpha: 1)
            backgroundColor = #colorLiteral(red: 0, green: 0.8385797143, blue: 0.6182498932, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
//            backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255.0, blue: 148.0/255.0, alpha: 1)
            backgroundColor = #colorLiteral(red: 1, green: 0.2546873391, blue: 0.2968834937, alpha: 1)
            icon.image = #imageLiteral(resourceName: "Icon Error")
            icon.isHidden = false
        case .standard:
//            backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255.0, blue: 201.0/255.0, alpha: 1)
            backgroundColor = #colorLiteral(red: 0.8143808246, green: 0.8472908139, blue: 0.8818879128, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet {
            label.text = title
        }
    }
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
}
