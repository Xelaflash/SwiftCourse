print("Que voulez vous faire?"
+ "\n1. 🤸🏻‍♂️ Enregistrer une nouvelle activité"
+ "\n2. 🏦 Consulter la banque"
+ "\n3. 🏠 Consulter la grange")

if let choice = readLine() {
    if choice == "1" {
        print("Vous voulez enregistrer une nouvelle activité !")
    } else if choice == "2" {
        print("Votre banque contient X euros !")
    } else if choice == "3" {
        print("Votre grange contient :"
            + "\n🍼  X bidons de lait"
            + "\n🌾  X bottes de blé"
            + "\n⚪️  X pelottes de laine")
    } else {
        print("Je ne comprends pas. Merci de réessayer")
    }
}
