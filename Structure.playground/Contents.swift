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
