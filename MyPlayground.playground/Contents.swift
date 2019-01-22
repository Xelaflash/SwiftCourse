var str = "Hello world"
print (str)

if str.count > 0 {
    print("texte est plus grand que 0")
} else {
    print("c'est plus petit ma gueule")
}

for letter in str {
    print ("Lettre : \(letter)")
}


var nbr1 : Int = 10
var nbr2 : Int = 5

print(nbr1)
print(nbr2)

var calc = nbr1 + nbr2
print(calc)

print("hello world")




// exo  : À raison de 45 min par repas, combien d'années passez-vous à table dans votre vie (vous êtes libre de choisir votre espérance de vie...) ?
// 3repas par jour esperance vie à 70 ans

let tpsJour = 45.0 * 3.0
print("nbres de min passés en repas par jour = \(tpsJour) min")

let tpsAn = tpsJour * 365.0
print("nbres de min passés en repas par an = \(tpsAn) min")

let tpsVieMin = tpsAn * 70.0
print("nbres de min passés en repas durant la vie = \(tpsVieMin) min")

let minParAn = (60.0 * 24.0) * 365.0
print("nbres de min par an: \(minParAn) min")

let results = tpsVieMin / minParAn
print("nbres d'années passées à table = \(results) ans")

let shotCalc = 45 * 3 * 365 * 70 / (60.0 * 24 * 365)
print(shotCalc)


// exo 2 : Quelle est la différence d'âge moyenne entre vous et vos parents ?
let diffPadre = 1986 - 1954
print(diffPadre)

let diffMadre = 1986 - 1952
print(diffMadre)

let results2 = (diffPadre + diffMadre) / 2
print("difference moyenne age avec les darons = \(results2) ans")

// exo 3 : Si vous gagnez le salaire moyen d'un développeur iOS (40KEUR), combien économiserez-vous (ou perdrez-vous) les deux prochaines années (par rapport à votre salaire actuel) ?

var diffSal = (40000 - 0) * 2
print("difference entre sal moyen ios dev et moi now sur 2 ans :) : \(diffSal) EUR")

!true && false
!(true && false)
4 < 3 || 4 >= 4
(!(1 == 2) || 3 != 3) && 35 > 34

var maDateDeNaissance = 1992
var laDateDeNaissanceDeBarack = 1968
if maDateDeNaissance > laDateDeNaissanceDeBarack {
    // Ma date de naissance est après donc je suis plus jeune
    print("Je suis un jeune premier !")
} else {
    // Ma date de naissance est avant donc je suis plus âgé
    print("J'ai plus d'expérience qu'un président !")
}


//while loop
var nombreDeMoutons = 0
while nombreDeMoutons < 10 {
    nombreDeMoutons += 1
    print("Je compte \(nombreDeMoutons) moutons")
}
print("Je me suis endormi")


// while and modulo
var day = 0 // Le 0 c'est donc lundi
while day < 30 {
    if day % 7 == 5 || day % 7 == 6 {
        // C'est le 6e ou 7e jour de la semaine
        print("Super c'est le week-end !")
    } else {
        print("Allez au travail !")
    }
    day += 1
}

//initialiasiation d'un array vide, le type doit être précisé
//var monTableauVide: [Int] = []

//syntaxe pour initialisation avec default value
var s = String() // s contient ""
var i = Int()    // i contient 0
var f = Float()  // f contient 0.0
var d = Double() // d contient 0.0
var b = Bool()   // b contient false

var notesDeLaClasse = [18, 4, 14, 15, 17, 15, 9, 20, 19, 11, 12, 14]
notesDeLaClasse.append(13)

var sum = 0
for notes in notesDeLaClasse {
    sum += notes
}

var students = notesDeLaClasse.count
print(students)
var moyenneClasse = sum / students
print (sum)
print("la moyenne des notes de la classe est \(moyenneClasse)")


var mesAmis = ["Pierre", "Paul", "Jacques"]
for unAmi in mesAmis {
    print("Salut \(unAmi) !")
}

// dictionnaires == hash (utilise key : value) [clé1: valeur1, clé2: valeur2]
//[TypeDeLaClé: TypeDeLaValeur]
var monDictionnaireVide = [String:Int]()

var ages = ["Michel": 34, "Paul": 22, "Fred": 67, "Jean": 15]

var countries = ["FR": "France", "IT": "Italie", "UK": "United King"]
// Je modifie la valeur, car la clé "UK" existe déjà
countries["UK"] = "United Kingdom"
// J'ajoute une valeur, car la clé "ES" n'existe pas
countries["ES"] = "Espagne"

countries.removeValue(forKey: "ES")
// L'association "ES": "Espagne" est supprimée
countries.count

//for (cle, valeur) in dictionnaire {
//    // Dans le code, on peut utiliser la clé et la valeur
//}

for (code, country) in countries {
    print("Le pays \(country) a pour code \(code)")
}


var heights = ["papa": 1.78, "celeste": 1.73, "iris": 1.64, "ambroise": 1.81, "maman": 1.71]
var totalHeight = 0.0
for (name, height) in heights {
    totalHeight += height
    print("\(name) mesure \(height)m")
}
print(" la famille mesure  \(totalHeight)m au total")


var jeSuisUnOptionnel: Int? = 12
print(jeSuisUnOptionnel!)
//optional binding ==> check si != nil puis crée une variable non optionelle
if let variableDeballe = jeSuisUnOptionnel {
    print(variableDeballe)
}

var jeSuisUnEntier: Int = 10
print(jeSuisUnEntier)


// creation de function
func helloWorld() {
    print("hello World")
}
//appel de la fonction
helloWorld()

func returnValue() -> String {
    return "la fonction renvoie bien un string"
}
returnValue()


//function avec paramètres
func ajouteDeux(nombre: Int) -> Int {
    return nombre + 2
}
print(ajouteDeux(nombre: 4))

func sum(a: Int, b: Int, c: Int) -> Int {
    return a + b + c
}
sum(a: 5, b: 4, c:2)



func canWeSit(freeSeats: Int, passengers: Int) {
    if freeSeats > passengers {
        print("There is some free seats, so you can sit man!")
    } else if freeSeats == passengers {
        print("There is no more free seats...😤")
    } else {
        print("People are standing in the bus!! 🚌")
    }
}
canWeSit(freeSeats: 10, passengers: 10)

//utilisation de l'étiquette = permet de clarifier ds l'appel de la fonction
// on appelle avec l'étiquette et non plus avec le params
func allerAuCinema(avec nom: String) {
    print("Je vais au cinéma avec " + nom)
}
allerAuCinema(avec: "Bob")

// ici utilisation de la wild card "_" permet de se passer de nom params ou de l'étiquette lors de l'appel de la fonction
func saluer(_ nom: String) {
    print("Bonjour " + nom)
}
saluer("Jean")

print("================================================")

class Personne {
    var prenom: String
    var nom: String
    var age = 0
    var sexe: Sexe = .femme
    
    init(prenom: String, nom: String) {
        self.prenom = prenom
        self.nom = nom
    }
    
    func sePresenter() -> String {
        print("Bonjour, je m'appelle \(prenom) \(nom)")
        return "Bonjour, je m'appelle \(prenom) \(nom)"
    }
    
    func feterSonAnniversaire() {
        age += 1
        print("\(age) an(s)")
    }
    
    static func creerJamesBond() -> Personne {
        let bond = Personne(prenom: "James", nom: "Bond")
        bond.age = 40
        //        print(bond.prenom, bond.nom, bond.age)
        return bond
    }
}

enum Sexe {
    case homme, femme
}

class Developpeur: Personne {
    var ordinateur = "Mac"
    override func sePresenter() -> String {
        super.sePresenter()
        print("et je suis développeur !")
        return "et je suis développeur !"
    }
}

let unDev = Developpeur(prenom: "Steve", nom: "Jobs")
unDev.sePresenter()

class Traducteur: Personne {
    var languesConnues = [String]()
    override func sePresenter() -> String {
        return "Hello, my name is \(prenom) \(nom)"
    }
}

let unTraducteur = Traducteur(prenom: "jean", nom: "boule")
unTraducteur.sePresenter()

class Athlete: Personne {
    var recordDu100m = 10.0
}

var TestPersonne = Personne(prenom: "Claudy", nom: "Faucan")
TestPersonne.sePresenter()
TestPersonne.feterSonAnniversaire()

Personne.creerJamesBond()


print("================================================")

class Animal {
    func saluer() {
        print("Bonjour")
    }
    
    func seDécrire() {
        print("Je suis un animal.")
    }
}

class Chien: Animal {
    override func saluer() {
        print("Wouf !")
    }
    
    override func seDécrire() {
        super.seDécrire()
        print("Et pas n'importe lequel : un chien !")
    }
}

let unChien = Chien()
unChien.seDécrire()

print("================================================")

// controle du type

class Media {
    var titre: String
    init(titre: String) {
        self.titre = titre
    }
}


class Film: Media {
    var réalisateur: String
    init(titre: String, réalisateur: String) {
        self.réalisateur = réalisateur
        super.init(titre: titre)
    }
}

class Chanson: Media {
    var chanteur: String
    init(titre: String, chanteur: String) {
        self.chanteur = chanteur
        super.init(titre: titre)
    }
}

let librairie = [
    Film(titre: "Un balai dans le placard", réalisateur: "Rémi Movie"),
    Chanson(titre: "L'ombre de ta valise", chanteur: "Frank Patatra"),
    Chanson(titre: "Toi et moi dans le couloir", chanteur: "Johnny Les Vacances"),
    Film(titre: "A portée de main", réalisateur: "Stanley Kubik"),
    Film(titre: "Pourquoi pas ?", réalisateur: "Alfred Plicploc"),
    Chanson(titre: "De si bon matin", chanteur: "Alain Chausson")
]

var nombreDeChansons = 0

//Le mot-clé is s'utilise donc avec la syntaxe variable is Type et renvoie un booléen.
for media in librairie {
    if media is Chanson { // Ici on contrôle que le media est bien une chanson
        nombreDeChansons += 1
    }
}
print("La librairie contient \(nombreDeChansons) chansons.")

for media in librairie {
    if let chanson = media as? Chanson {
        print(chanson.chanteur)
    }
}
