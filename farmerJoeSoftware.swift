//======================
//  MARK: - Parameters
//======================
var benef: Double = 0.0
// utilisation de la capacité de la grange
var barn = ["milk": 0, "wheat": 0, "wool": 0]


//======================
//  MARK: - Activities
//======================
// daily cost
func feedCows() {
    benef -= 4
}

func sell() {
    benef += Double(barn["milk"]!) * 0.50
    benef += Double(barn["wheat"]!) * 0.3
    benef += Double(barn["wool"]!) * 1
    // reset de la grange
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func harvest(nbrofProducts: Int) {
    barn["wheat"]! += nbrofProducts
}

func mowSheep(nbrofProducts: Int) {
    barn["wool"]! += nbrofProducts
}

func milkCows(nbrofProducts: Int) {
    barn["milk"]! += nbrofProducts
}

//========================
//  MARK: - User Interaction
//========================

//function avec etiquette
func readQuantity(of type: String) -> Int? {
    print("Combien de \(type) avez vous récupéré ?"
        + "\n =======================================")
    
    if let line = readLine() {
        if let quantity = Int(line) {
            return quantity
        }
    }
    // Si la valeur n'a pas pu être interprétée, on le dit
    print("Je n'ai pas compris.")
    return nil
}

func addNewActivity() {
    print("================ Qu’avez-vous fait aujourd'hui? ==========="
        + "\n1. 🥕  J’ai nourri mes animaux"
        + "\n2. 💰  J’ai vendu mes produits"
        + "\n3. 🐄  J’ai trait mes vaches"
        + "\n4. 🌾  J’ai moissonné"
        + "\n5. 🐑  J’ai tondu mes moutons"
        + "\n =======================================")
    if let choiceActivity = readLine() {
        switch choiceActivity {
        case "1":
            feedCows()
        case "2":
            sell()
        case "3":
            if let quantity = readQuantity(of: "🍼") {
                milkCows(nbrofProducts: quantity)
            }
        case "4":
            if let quantity = readQuantity(of: "🌾") {
                harvest(nbrofProducts: quantity)
            }
        case "5":
            if let quantity = readQuantity(of: "🐑") {
                mowSheep(nbrofProducts: quantity)
            }
        default:
            print("Je ne comprends pas. Merci de réessayer")
        }
        print("🎉  Super votre activité a bien été enregistré 🎉"
        + "\n                            ")
    }
}

var exit = Bool()

func presentMenu() {
    print("========== Que voulez vous faire? =========="
        + "\n1. 🤸🏻‍♂️ Enregistrer une nouvelle activité"
        + "\n2. 🏦 Consulter la banque"
        + "\n3. 🏠 Consulter la grange"
        + "\n4. Exit program"
        + "\n =======================================")
    
    if let choice = readLine() {
        switch  choice {
        case "1":
            addNewActivity()
        case "2":
            print("Votre banque contient \(benef) euros !"
             + "\n                            ")
        case "3":
            print("Votre grange contient :"
                + "\n🍼  \(barn["milk"]!) bidons de lait"
                + "\n🌾  \(barn["wheat"]!) bottes de blé"
                + "\n⚪️  \(barn["wool"]!) pelottes de laine"
                + "\n                            ")
        case "4":
            exit = true
        default:
            print("Je ne comprends pas. Merci de réessayer")
        }
    }
}

while exit == false {
    presentMenu()
}
