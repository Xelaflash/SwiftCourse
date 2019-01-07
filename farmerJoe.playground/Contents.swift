// EXO Farmer JOE

let planePrice: Double = 1499  // (double == float in swift / PS: float exists but not recommended)
let dailyBenefit: Double = 10
let resultJoe = planePrice / dailyBenefit
let message = "Cher Joe, il te faudra économiser pendant \(resultJoe) jours pour te payer ton voyage à \(planePrice) €"
print(message)


var benef: Double = 0.0
//let dailyCost: Double = 4
var numberOfDays = 0

// calcul du nbres de jours pour que joe puisse partir
// programme pas correct car ne prend pas en compte la notion de mois
//while benef < planePrice  {
//        // daily cost
//        benef -= 4
//        if numberOfDays == 1 {
//            // selling blé
//            benef += (100 * 0.3)
//        } else if  numberOfDays == 10 || numberOfDays == 20 {
//            // selling mouton
//            benef += (30 * 1)
//        } else {
//            // traite vach quotidienne
//            benef += 30 * 0.50
//        }
//    numberOfDays += 1
//}
//print("Il aura fallu \(numberOfDays) jours à Joe pour économiser \(benef) €")


// setup de la grange [lait, laine, blé]

//while benef < planePrice  {
//        // daily cost
//        benef -= 4
//        if numberOfDays % 30 == 1 {
//            // selling blé
//            benef += (100 * 0.3)
//        } else if  numberOfDays  % 30 == 10 || numberOfDays  % 30 == 20 {
//            // selling mouton
//            benef += (30 * 1)
//        } else {
//            // traite vach quotidienne
//            benef += 30 * 0.50
//        }
//    numberOfDays += 1
//}
//print("Il aura fallu \(numberOfDays) jours à Joe pour économiser \(benef) €")




// utilisation de la capacité de la grange
var barn = ["milk": 0, "wheat": 0, "wool": 0]

while benef < planePrice  {
    // daily cost
    benef -= 4
    
    var barnSize = 0
    for goods in barn {
        barnSize += goods
    }
    
    if barnSize >= 500 {
        benef += Double(barn[0]) * 0.50
        benef += Double(barn[1]) * 0.3
        benef += Double(barn[2]) * 1
        
    // setup de la grange [lait, laine, blé]
        barn = [0, 0, 0]
    } else {
        if numberOfDays % 30 == 1 {
            // selling blé
            barn[1] += 100
        } else if  numberOfDays  % 30 == 10 || numberOfDays  % 30 == 20 {
            // selling mouton
            barn[2] += 30
        } else {
            // traite vach quotidienne
            barn[0] += 30
        }
        
    }
    numberOfDays += 1
}

print("Il aura fallu \(numberOfDays) jours à Joe pour économiser \(benef) €")
