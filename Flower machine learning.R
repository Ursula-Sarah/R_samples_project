###
### La régression linéaire est une méthode statistique utilisée pour modéliser la relation entre une variable dépendante (Y) et une ou plusieurs variables indépendantes (X). 
### En langage R, cette méthode est souvent mise en œuvre à l'aide de la fonction lm().
###

# Voici une explication 
# étape par étape de la régression linéaire en langage R :

# Importez vos données dans R.
# Utilisez la fonction lm() pour créer votre modèle de régression linéaire. 
# Par exemple :

model <- lm(Y ~ X1 + X2, data = your_data)

# Ici, Y est votre variable dépendante, X1 et X2 sont vos variables indépendantes, et your_data est le nom de votre ensemble de données.
# Une fois que le modèle est créé, vous pouvez obtenir un résumé des résultats à l'aide de la fonction summary() :

summary(model)

# Cela vous fournira des informations telles que les coefficients, 
# les valeurs p, les statistiques t et R-carré.

# Vous pouvez également utiliser la fonction predict() pour effectuer des prédictions à l'aide du modèle 
predictions <- predict(model, newdata = new_data)

# Ici, new_data est un nouvel ensemble de données pour lequel vous souhaitez faire des prédictions.
# Assurez-vous de comprendre les principes de base de la régression linéaire avant de l'appliquer en R.

# Utilisation de pacman pour la gestion des packages
if (!require(pacman)) install.packages("pacman")
pacman::p_load(caret, ggplot2, tree,shiny)

# Chargement des données iris
data("iris")
View(iris)
head(iris,10)
summary(iris)
# Définir une graine pour la reproductibilité
set.seed(50)

# Création des ensembles d'entraînement et de test
indexes <- sample(1:nrow(iris), size = 100)
train <- iris[indexes, ]
test <- iris[-indexes, ]


# Modèle de régression linéaire
model_lin <- lm(Petal.Width ~ Petal.Length, data = train)

# Résumé du modèle
summary(model_lin)

# Visualisation des résultats de la régression
ggplot(train, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Régression Linéaire : Largeur du Pétale vs Longueur du Pétale")

# Formation d'un modèle d'arbre de décision
model_tree <- tree (Species ~ ., data = train)
?tree
# Visualisation de l'arbre de décision
plot(model_tree)
text(model_tree)


# Prédiction avec l'arbre de décision
predictions <- predict(model_tree, newdata = test, type = "class")

# Matrice de confusion pour évaluer la classification
confusionMatrix(predictions, test$Species)


# Sauvegarde du modèle d'arbre
save(model_tree, file = "")

# Sauvegarde des données d'entraînement
save(train, file = "")


# NETTOYAGE ET ORGANISATION #################################

# Nettoyage de l'environnement de travail
rm(list = ls())  # Supprime toutes les variables
