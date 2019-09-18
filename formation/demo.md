Formation Galaxy-Ecology RegionalGAM

lien vers l'instance :
https://ecology.usegalaxy.eu

1. Préparation à l'utilisation de la plateforme
    1. Présentation de l'interface
        - Barre supérieure
        - Outils
        - Historique
    2. Création d'un compte sur l'instance
        * Possible en fonction des instances proposées ?
        - Email address:
        - Password:
        - Public name:
    3. Création historique
2. Importation des données
    - Bouton importer des données
    - Paste/Fetch data
    - https://zenodo.org/record/1324204/files/regional%20GAM%20data.csv
    - Start
3. Manipulation des données
    1. Changement de type de fichier
        - Rechercher "csv to tabular"
        - Paramètre par défaut
        - Execute
    2. Sélection des données qui nous intéressent
        - Text reformatting with awk
          `NR == 1 { print }
          /NLBMS/ { print }`
    3. Retour au CSV ???
4. Analyse
    1. reconstruction de la phénologie
        - Flight curve
        - *Visualisation de la phénologie*
        - ggplot 
    3.  Abundance index
