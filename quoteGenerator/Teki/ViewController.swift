//
//  ViewController.swift
//  Teki
//
//  Created by iFlash on 14/12/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.textColor = .green
        quoteLabel.backgroundColor = .black
    }
    
    
    let celeb = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson", "le Claudy Faucan", "le Sim", "le Noel Flantier", "la Natacha", "la mère de Charlie", "la chatte à Dédé", "mon ptit dim"]
    let activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party", "de mon cul", "de la Belgique", "de rien", "de l'apéro", "du porno Ouzbek", "de la teuf", "de la branlette"]
    let textColor = [#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1),#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1),#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 0.9994240403, green: 0.9855536819, blue: 0, alpha: 1)]
    let backgroundColor = [#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1), #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1), #colorLiteral(red: 0.5791940689, green: 0.1280144453, blue: 0.5726861358, alpha: 1),#colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)]
    

    @IBAction func changeQuote() {
        // On séléctionne un élément alétoire parmi les célébrités
        
    let randomIndex1 = Int(arc4random_uniform(UInt32(celeb.count)))
        let celebrity = celeb[randomIndex1]

        // selection activités
        let randomActivityIndex = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomActivityIndex]
        
//        quote generation 
        let quote = "Tu es \(celebrity) \(activity)!"
        quoteLabel.text = quote
        
        let randomColor = Int(arc4random_uniform(UInt32(textColor.count)))
            let color = textColor[randomColor]
        let randomBackgroundColor = Int(arc4random_uniform(UInt32(backgroundColor.count)))
        let bgColor = backgroundColor[randomBackgroundColor]

        quoteLabel.textColor = color
        quoteLabel.backgroundColor = bgColor
    }
}

