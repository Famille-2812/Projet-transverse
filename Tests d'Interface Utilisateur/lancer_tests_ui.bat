@echo off

rem Cache l'affichage des commandes dans le terminal


echo Lancement des tests UI...

rem Affiche ce message avant de lancer les tests UI


robot tests_ihm

rem Exécute les tests présents dans le dossier tests_ihm


pause

rem Garde la fenêtre ouverte pour lire les erreurs ou les résultats