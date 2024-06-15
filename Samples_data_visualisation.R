# importation de donnée en ligne 

base=read.csv2("https://dimension.usherbrooke.ca/donnees/ex1.csv", header=TRUE)
base
table(base$vote)
names(base)
dim(base)

# Graphique simple pour representation
        
base=read.csv2("https://dimension.usherbrooke.ca/donnees/ex1.csv", header=TRUE)
base
t1=table(base$vote,base$revenu)
        
#Ici on ajoute un parametre pour définir les couleurs
couleur=c("red","blue")
# par(mfrow=c(1,1): cela signifiee qu'il n'y a qu'un graphique ; inutile ici.
# oma= marges extérieures, ordre des arguments=bas, gauche, haut, droite, mar= marges intérieures  ordres des arguments=bas, gauche, haut, droite
par(mfrow=c(1,1), oma=c(1,1,1,1),mar=c(4,2,2,1))
barplot(t1, main="Vote selon la classe", xlab="Nombre d'individus",
horiz=TRUE, legend=TRUE, beside=TRUE, xlim=c(0,5), col=couleur)



base=read.csv2("https://dimension.usherbrooke.ca/donnees/ex1.csv", header=TRUE)
base
t1=table(base$vote,base$revenu)

#Ici on crée un ensemble avec quatre graphiques (ici tous identiques!)
couleur1=c("red","blue")
couleur2=c("yellow","green")
couleur3=c("black","white")
couleur4=c("orange","black")

# par(mfrow=c(2,2): cela signifie que l'on crée un ensemble de quatre graphiques, 2 par 2.
# oma= marges extérieures, ordre des arguments=bas, gauche, haut, droite, mar= marges intérieures  ordres des arguments=bas, gauche, haut, droite
par(mfrow=c(2,2), oma=c(1,1,1,1),mar=c(5,2,5,1))
barplot(t1, main="Graphique 1
Vote selon la classe", xlab="Nombre d'individus",
        horiz=TRUE, legend=TRUE, beside=TRUE, xlim=c(0,5), col=couleur1)
barplot(t1, main="Graphique 2
Vote selon la classe", xlab="Nombre d'individus",
        horiz=TRUE, legend=TRUE, beside=TRUE, xlim=c(0,5), col=couleur2)
barplot(t1, main="Graphique 3
Vote selon la classe", xlab="Nombre d'individus",
        horiz=TRUE, legend=TRUE, beside=TRUE, xlim=c(0,5), col=couleur3)
barplot(t1, main="Graphique 4
Vote selon la classe", xlab="Nombre d'individus",
        horiz=TRUE, legend=TRUE, beside=TRUE, xlim=c(0,5), col=couleur4)

