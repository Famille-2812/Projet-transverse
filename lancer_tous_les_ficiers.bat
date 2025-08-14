@echo off

rem Script pour exécuter tous les tests en une seule fois




echo Lancement de tous les tests...

rem Affiche un message d’introduction




call lancer_les_tests_unitaires.bat

rem Appelle le script des tests unitaires

if errorlevel 1 exit /b 1

rem Si une erreur est détectée (code retour > 0), on arrête tout




call lancer_tests_API.bat

rem Appelle le script des tests API

if errorlevel 1 exit /b 1




call lancer_tests_ui.bat

rem Appelle le script des tests IHM

if errorlevel 1 exit /b 1




echo Tous les tests sont passés avec succès !

rem Message final si tout s’est bien passé




pause

rem Garde la fenêtre ouverte
