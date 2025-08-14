*** Settings ***
Library    SeleniumLibrary
Resource    commun.resource
Test Setup    Ouvrir Le Naviateur Et Accéder A L'Application
Test Template    Un Message D'Erreur Doit Etre Vsible Après Une Connexion Incorrecte
*** Test Cases ***

#cas de test                                                    #nom d'utilisateur                    #mot de passe
Test Utilisateur Valide Mot De Passe Non Valide                  robot                                    qwert
Test Utilisateur Non Valide Mot De Passe Valide                  qwert                                    robot
Test Utilisateur Non Valide Mot De Passe Non Valide              qwert                                    qwert
Test Utilisateur Vide Mot De Passe Valide                        ${EMPTY}                                 robot
Test Utilisateur Vide Mot De Passe Non Valide                    ${EMPTY}                                 qwert
Test Utilisateur Valide Mot De Passe Vide                        robot                                    ${EMPTY} 
Test Utilisateur Non Valide Mot De Passe Vide                    qwert                                    ${EMPTY} 

*** Keywords ***

Un Message D'Erreur Doit Etre Vsible Après Une Connexion Incorrecte 
    [Arguments]    ${nom d'utilisateur}    ${mot de passe}
    Ouvrir Le Naviateur Et Accéder A L'Application
    Accéder A La Page De Connexion
    Entrer Le Nom D'Utilisateur    ${nom d'utilisateur}
    Entrer Le Mot De Passe    ${mot de passe}
    Soumettre Le Formulaire De Connexion
    Vérifier Que Le Message D'Erreur Est Visible

Vérifier Que Le Message D'Erreur Est Visible
    Wait Until Element Is Visible    ${ZONE ERREUR} 
