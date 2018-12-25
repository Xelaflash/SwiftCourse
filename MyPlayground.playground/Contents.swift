//var str = "Hello world"
//print (str)
//
//if str.count > 0 {
//    print("texte est plus grand que 0")
//} else {
//    print("c'est plus petit ma gueule")
//}
//
//for letter in str {
//    print ("Lettre : \(letter)")
//}
//
//
//var nbr1 : Int = 10
//var nbr2 : Int = 5
//
//print(nbr1)
//print(nbr2)
//
//var calc = nbr1 + nbr2
//print(calc)
//
//print("hello world")




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
