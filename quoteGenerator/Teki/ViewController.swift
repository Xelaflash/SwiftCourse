//
//  ViewController.swift
//  Teki
//
//  Created by iFlash on 14/12/2018.
//  Copyright © 2018 iFlash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let celeb = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson", "le Claudy Faucan", "le Sim", "le Noel Flantier", "la Natacha", "la mère de Charlie", "la chatte à Dédé", "mon ptit dim"]
    let activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party", "de mon cul", "de la Belgique", "de rien", "de l'apéro", "du porno Ouzbek", "de la teuf", "de la branlette"]
    
    @IBOutlet weak var quoteLabel: UILabel!
    
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
    }
}
