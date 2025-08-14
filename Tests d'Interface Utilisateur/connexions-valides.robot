*** Settings ***
Library    SeleniumLibrary
Resource    commun.resource

*** Test Cases ***
Le Tableau De Bord Doit Etre Visible Après Une Connexion Réussie
    [Setup]    Effectuer Une Connexion Réussie
    Vérifier Que Le Tableau De Bord Est Visible
    [Teardown]    Effectuer Une Déconnexion Réussie

Le Lien De Connexion Devrait Etre Visible Après Une Déconnexion Réussie
    [Setup]    Effectuer Une Connexion Réussie
    Vérifier Que Le Tableau De Bord Est Visible
    Effectuer Une Déconnexion Réussie
    Vérifier Que Le Lien De Connexion Est Visible

    


