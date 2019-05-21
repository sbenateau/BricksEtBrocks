---
title: "Galaxy-Ecology"
subtitle: "Une plateforme d'analyse de données
accessible"
author: |
    | Simon Bénateau$^1$, Benjamin Yguel$^1$, Alan Amossé$^1$, Yvan Le Bras$^2$
    |
    | Muséum National d'Histoire Naturelle
    | 1. UMR Centre d'Ecologie et des Sciences de la COnservation
    | 2. UMS PATRImoine NATurel
date: "14 mai 2019"
theme: metropolis
header-includes:
- \titlegraphic{\raggedleft \includegraphics[height=0.7cm]{figures/Logos/Logo65MO.png} \hfill \includegraphics[height=0.7cm]{figures/Logos/LogoCesco.png} \hfill \includegraphics[height=0.7cm]{figures/Logos/LogoGalaxyProject.jpg} \hfill \includegraphics[height=0.7cm]{figures/Logos/LogoGapars.png} \vspace{7cm} \\ \includegraphics[height=0.7cm]{figures/Logos/LogoH2020.png} \hfill \includegraphics[height=0.7cm]{figures/Logos/LogoVigieNature.jpg}}
- \usepackage[labelformat=empty]{caption}
classoption: "aspectratio=129"
---

# Vigie nature  
![](figures/observatoires_vigienature_aml.png)

# Organisation du réseau d'acteurs
![](figures/NetworkVigieNature.png)

# Destination des plateformes d'analyse de données
![](figures/NetworkVigieNatureGalaxy.png)

# Axes de développement et freins à l'implémentation

- Besoins principaux
    - Accès aux données
    - Indicateurs régionaux
    - Communication auprès des participants, des médias et des instances politiques
- Freins principaux
    - Formation à l'utilisation des méthodes
    - Installation et utilisation des outils
        - Dépendances (e.g. versions des packages)
        - Lignes de commande (utilisation de R)

# Accès aux données

- Outils dédiés
    - Importation des données des observatoires
    - Importation depuis des bases de données naturalistes
        - gbif, bison, inat, ebird, antweb, ala, idigbio, obis, ecoengine, vertnet
    - Importation de données écologiques
        - Worldclim
	      - Davantage de données bientôt
- Bibliothèques de données

# Outils

![](figures/descriptionTool.png)

# Outils

- SIG
    - GDAL
        - traitement de fichiers raster / vecteur
- Analyse de données
    - Détection et identification de chauves-souris à partir d'enregistrements
    - Calcul d'indicateurs
       - RegionalGAM (Suivi de l'abondance de papillon)
       - Tendances STOC-EPS (Suivi temporel des oiseaux communs - Point d'écoute)

# Outils

- Intégration d'outils shiny
    - Wallace (Modélisation de distribution d'espèces)
- Autres outils interactifs
    - Jupyter
    - Rstudio
    - NVD3

# Possibilité de partage

- Données
- Outils
- Workflow
- Résultats
- Rapports

# Tutoriels

![](figures/galaxyTraining.png)

# Perspectives

- Gain de temps pour la production des indicateurs
- Créer des ponts entre les développeurs et les utilisateurs des méthodes
- Améliorer le partage des données et des méthodes d'analyse
- Gérer certains aspects des soucis de reproductibilité
- Facilité le travail "interdiciplinaire"

# Merci
\includegraphics[height=3.7cm]{figures/Team/Alan.jpg} \hfill \includegraphics[height=3.7cm]{figures/Team/Benjamin.jpg} \hfill \includegraphics[height=3.7cm]{figures/Team/Yvan.jpg}
