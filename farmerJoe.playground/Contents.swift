// EXO Farmer JOE
let planePrice: Double = 1499  // (double == float in swift / PS: float exists but not recommended)
let dailyBenefit: Double = 10
let resultJoe = planePrice / dailyBenefit
let message = "Cher Joe, il te faudra économiser pendant \(resultJoe) jours pour te payer ton voyage à \(planePrice) €"
print(message)


var benef: Double = 0.0
//let dailyCost: Double = 4
var numberOfDays = 0

// utilisation de la capacité de la grange
var barn = ["milk": 0, "wheat": 0, "wool": 0]


func calculateBarnSize() -> Int {
    var barnSize = 0
//    le _ est utilisé comme se référant à la clés dans le dico
    for (_, nbrofGoods) in barn {
        barnSize += nbrofGoods
    }
    return barnSize
}

// daily cost
func feedCows() {
    benef -= 4
}

func sell() {
    //  il s'agit ici d'optionnel dc on dois le déballer avec le "!" ==> car on sait que c'est != nil
    benef += Double(barn["milk"]!) * 0.50
    benef += Double(barn["wheat"]!) * 0.3
    benef += Double(barn["wool"]!) * 1
    
    // reset de la grange
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func harvest() {
    barn["wheat"]! += 100
}

func mowSheep() {
    barn["wool"]! += 30
}

func milkCows() {
    barn["milk"]! += 30
}

while benef < planePrice  {
    feedCows()

    if calculateBarnSize() >= 500 {
        sell()

    } else {
        if numberOfDays % 30 == 1 {
            // selling blé
            harvest()
        } else if  numberOfDays  % 30 == 10 || numberOfDays  % 30 == 20 {
            // selling mouton
            mowSheep()
        } else {
            // traite vach quotidienne
            milkCows()
        }
    }
    numberOfDays += 1
}

print("Il aura fallu \(numberOfDays) jours à Joe pour économiser \(benef) €")
