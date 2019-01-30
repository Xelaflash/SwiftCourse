import UIKit

class RectangleClass {
    var hauteur = 0
    var largeur = 0
    
    init(largeur: Int, hauteur: Int) {
        self.largeur = largeur
        self.hauteur = hauteur
    }
}

var c1 = RectangleClass(largeur: 10, hauteur: 5)
var c2 = c1
c2.hauteur = 8
c1.hauteur
c2.hauteur

let c = RectangleClass(largeur: 10, hauteur: 5)
c.hauteur = 12

struct RectangleStruct {
    var hauteur = 0
    var largeur = 0
    
    init(largeur: Int, hauteur: Int) {
        self.largeur = largeur
        self.hauteur = hauteur
    }
}

var s1 = RectangleStruct(largeur: 10, hauteur: 5)
var s2 = s1

s2.hauteur = 8
s1.hauteur
s2.hauteur

let s = RectangleStruct(largeur: 10, hauteur: 5)
//s.hauteur = 12 // Erreur !


//Les deux grandes différences entre les classes et les structures sont donc :
//
//les structures n'ont pas d'héritage
//
//les structures sont un type par valeur et les classes un type par référence
//
//Hormis ces deux grandes différences, il existe quelques différences pratiques et je vais vous en citer deux principales :
//1. L'initialisation par défaut
//
//Si on reprend notre structure RectangleStruct, on peut lui enlever ses valeurs par défaut et son initialisation et contrairement à la classe, cela ne déclenchera pas d'erreur
//La raison, c'est que les structures ont une petite fonctionnalité bien pratique. Elles sont équipées automatiquement d'un initialiseur par défaut qui prend en paramètre ses propriétés stockées. Autrement dit, sans avoir déclaré un initialiseur

//2. Les fonctions mutantes
//
//Une structure a, comme vous l'avez vu, un rapport direct avec ses valeurs. Et elle ne laisse pas n'importe qui les modifier ! Notamment si vous déclarer une méthode qui modifie une ou plusieurs propriétés de la structure, vous devez rajouter le mot-clé mutating pour signifier à la structure que cette fonction risque de modifier certaines propriétés.

//C'est le moment de la grande question : quand dois-je utiliser une structure plutôt qu'une classe ? Je vous propose une réponse simple :
//
//Si votre modèle de donnée sert principalement à stocker des données et qu'il effectue peu de logique, choisissez une structure.
//
//Donc si vous n'avez pas ou très peu de méthodes, une structure fera sans doute mieux l'affaire. C'est la raison pour laquelle j'ai choisi une structure pour notre type Question.
//
//Apple recommande de plus en plus, l'utilisation des structures au lieu des classes. Donc, n'oubliez pas de suivre les suggestions d'utilisation les concernant !
//
//Tous les types simples que vous connaissez : Int, Double, Float, String, Bool, Dictionnaire, Tableau sont des structures en Swift.


struct Adresse {
    var voie:String = "75 avenue des Champs-Elysées"
    var ville:String = "Paris"
    var pays:String = "France"
    var codePostal:String = "75007"
    
//    init(voie: String, ville: String, pays: String, codePostal: String) {
//        self.voie = voie
//        self.ville = ville
//        self.pays = pays
//        self.codePostal = codePostal
//    }
    
    func afficher() {
        print("\(voie), \(codePostal) \(ville), \(pays)")
    }
}

let newAdress = Adresse(voie: "7 allée mon cul", ville: "Bordeaux" ,pays: "France" , codePostal: "33000" )
newAdress.afficher()


// ================================================================

func ajouteDeux(x: Int) -> Int {
    return x + 2
}

func multiplieParTrois(x: Int) -> Int {
    return x * 3
}

func soustraitQuatre(x: Int) -> Int {
    return x - 4
}

func multiplieParDeux(x: Int) -> Int {
    return x * 2
}

//Ces quatre fonctions sont du même type : (Int) -> Int. Donc on peut créer un tableau qui les regroupe toutes :
var mesFonctions = [ajouteDeux(x:), multiplieParTrois(x:), soustraitQuatre(x:), multiplieParDeux(x:)]

// Ce tableau est donc du type [(Int) -> Int]. Maintenant je peux, par exemple, faire une boucle for pour parcourir mon tableau :
var a = 2
for maFonction in mesFonctions {
    a = maFonction(a)
}


// EXO
//Vous devez compléter la fonction obtenirDivision. Cette fonction renvoie une des deux fonctions au dessus en fonction de la parité de son paramètre x. Vous noterez que le type de retour de cette fonction corresponds bien au type des deux fonctions du dessus. Ensuite, vous devez utiliser la fonction obtenirDivision pour compléter la boucle.

func diviserNombrePairParDeux(x: Int) -> Int {
    return x / 2
}

func diviserNombreImpairParDeux(x: Int) -> Int {
    return (x + 1) / 2
}

func obtenirDivision(x: Int) -> (Int) -> (Int) {
    if (x % 2 == 0) {
        return diviserNombrePairParDeux(x:)
    } else {
        return diviserNombreImpairParDeux(x:)
    }
}

let tableau = [2, 12, 3, 14, 76, 19, 7, 22]
var somme = 0

for nombre in tableau {
    let division = obtenirDivision(x: nombre)
    division(nombre)
    somme += division(nombre)
}

// =================== END EXO ==============================




