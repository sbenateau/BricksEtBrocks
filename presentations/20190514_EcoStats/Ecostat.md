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
header-includes:
- \titlegraphic{\raggedleft \includegraphics[width=3cm]{figures/logo.png} \vspace*{6cm}~ \includegraphics[width=3cm]{figures/logo.png}}
theme: metropolis
---

# Vigie nature  
![observatoires](figures/observatoires_vigienature_aml.jpg)

# Organisation du réseau d'acteurs
![réseaux](figures/Vigie-Nature-Network.jpg)

# Destination des plateformes d'analyse de données
![réseaux](figures/Vigie-Nature-Network2.png)

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

![CodeToTool](figures/codeToTool.png)

# Outils

- Calcul d'indicateurs
    - RegionalGAM (Suivi de l'abondance de papillon)
    - Tendances STOC-EPS (Suivi temporel des oiseaux communs)
- Traitement de données
    - Détection et identification de chauves-souris à partir de d'enregistrements
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
    - Visualisation de données  

# Possibilité de partage

- Données
- Outils
- Workflow
- Résultats
- Rapports

# Tutoriels

![Training](figures/galaxyTraining.png)

# Perspectives

- Gain de temps pour la production des indicateurs
- Créer des ponts entre les développeurs et les utilisateurs des méthodes
- Améliorer le partage des données et des méthodes d'analyse
- Gérer certains aspects des soucis de reproductibilité
- Facilité le travail "interdiciplinaire"

# Merci

![Team](figures/team.png)