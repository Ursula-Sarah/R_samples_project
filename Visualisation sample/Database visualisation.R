
# Charger la librairie ggplot2 pour la visualisation
library(ggplot2)

# Charger le jeu de données iris
data("iris")
head(iris,100)





# Créer un diagramme en boîte montrant la distribution des longueurs de pétales pour chaque espèce


ggplot(iris, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot() +
  labs(title = "Distribution des longueurs de pétales par espèce",
       x = "Espèce",
       y = "Longueur du pétale") +
  theme_minimal()

# Ce code utilise la librairie ggplot2 pour créer un diagramme 
# en boîte qui montre la distribution des longueurs de pétales
# pour chaque espèce de fleur dans le jeu de données iris. 
# Vous pouvez également modifier les variables utilisées 
# pour l'axe des x et y ainsi que les types de graphiques selon les besoins de l'exercice.

