@echo off
rem Empêche d’afficher chaque commande exécutée

echo ===============================================
echo Début du lancement de tous les tests
echo ===============================================

rem ---------------------------
rem Lancement des tests unitaires
rem ---------------------------
echo.
echo ---------- Tests Unitaires ----------
if exist "Tests Unitaires" (
    python -m unittest discover -v "Tests Unitaires"
) else (
    echo Le dossier "Tests Unitaires" est introuvable !
)

rem ---------------------------
rem Lancement des tests API
rem ---------------------------
echo.
echo ---------- Tests API ----------
if exist "Tests d'API" (
    rem Ici, remplacer par la commande qui lance vos tests API, par exemple pytest
    pytest "Tests d'API"
) else (
    echo Le dossier "Tests d'API" est introuvable !
)

rem ---------------------------
rem Lancement des tests IHM
rem ---------------------------
echo.
echo ---------- Tests IHM ----------
if exist "Tests d'Interface Utilisateur" (
    rem Ici, remplacer par la commande qui lance vos tests IHM
    pytest "Tests d'Interface Utilisateur"
) else (
    echo Le dossier "Tests d'Interface Utilisateur" est introuvable !
)

echo.
echo ===============================================
echo Fin du lancement de tous les tests
echo ===============================================

pause
