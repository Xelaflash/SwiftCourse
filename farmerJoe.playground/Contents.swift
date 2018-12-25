// EXO Farmer JOE

let planePrice: Double = 1499  // (double == float in swift / PS: float exists but not recommended)
let dailyBenefit: Double = 10
let resultJoe = planePrice / dailyBenefit
let message = "Cher Joe, il te faudra économiser pendant \(resultJoe) jours pour te payer ton voyage à \(planePrice) €"
print(message)


var benef: Double = 0.0
let dailyCost: Double = 4
var numberOfDays = 0


//for day in 1...30 {
//    // daily cost
//    benef -= 4
//    if day == 1 {
//        // selling blé
//        benef += (100 * 0.3)
//    } else if  day == 10 || day == 20 {
//        // selling mouton
//       benef += (30 * 1)
//    } else {
//        // traite vach quotidienne
//        benef += 30 * 0.50
//    }
//}
//print(" Benefice mensuel = \(benef) EUR")




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


//initialiasiation d'un array vide, le type doit être préciser
//var monTableauVide: [Int] = []

//syntaxe pour initialisation avec default value
var s = String() // s contient ""
var i = Int()    // i contient 0
var f = Float()  // f contient 0.0
var d = Double() // d contient 0.0
var b = Bool()   // b contient false

// setup de la grange [lait, laine, blé]
var barn = [0, 0, 0]

while benef < planePrice  {
        // daily cost
        benef -= 4
        if numberOfDays % 30 == 1 {
            // selling blé
            benef += (100 * 0.3)
        } else if  numberOfDays  % 30 == 10 || numberOfDays  % 30 == 20 {
            // selling mouton
            benef += (30 * 1)
        } else {
            // traite vach quotidienne
            benef += 30 * 0.50
        }
    numberOfDays += 1
}
print("Il aura fallu \(numberOfDays) jours à Joe pour économiser \(benef) €")
