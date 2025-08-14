*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://livraison3.testacademy.fr
${NAVIGATEUR}    Chrome
${LIEN SE CONNECTER}    xpath=//a[contains(text(),'Se connecter')]
${LIEN SE DECONNECTER}    xpath=(//a[contains(text(),'Se déconnecter')])[3]
${CHAMP NOM D'UTILISATEUR}     name=username
${NOM D'UTILISATEUR}    robot
${CHAM MOT DE PASSE}    name=password
${MOT DE PASSE}    robot 
${BOUTON SE CONNECTER}    css=.homey_login_button
${TITRE PAGE TABLEAU DE BORD}    Tableau de bord - Livraison 3
${ZONE ERREUR}    css=.homey_login_button


*** Keywords ***

Effectuer Une Connexion Réussie
    Ouvrir Le Naviateur Et Accéder A L'Application
    Accéder A La Page De Connexion
    Entrer Le Nom D'Utilisateur    ${NOM D'UTILISATEUR} 
    Entrer Le Mot De Passe    ${MOT DE PASSE}
    Soumettre Le Formulaire De Connexion
    
Ouvrir Le Naviateur Et Accéder A L'Application
     Open Browser    ${URL}     ${NAVIGATEUR}
    Maximize Browser Window
Accéder A La Page De Connexion
    Click Element    ${LIEN SE CONNECTER}
    Wait Until Element Is Visible    ${CHAMP NOM D'UTILISATEUR}
Entrer Le Nom D'Utilisateur
    [Arguments]    ${utilisateur valide}
    Click Element   ${CHAMP NOM D'UTILISATEUR}
    Input Text     ${CHAMP NOM D'UTILISATEUR}    ${utilisateur valide}
Entrer Le Mot De Passe
    [Arguments]    ${mot de passe}    
        Click Element   ${CHAM MOT DE PASSE} 
        Input Text    ${CHAM MOT DE PASSE}   ${mot de passe}
Soumettre Le Formulaire De Connexion
    Click Button    ${BOUTON SE CONNECTER}
Vérifier Que Le Tableau De Bord Est Visible
    Wait Until Element Is Not Visible    ${CHAMP NOM D'UTILISATEUR}
    Title Should Be    ${TITRE PAGE TABLEAU DE BORD}
Effectuer Une Déconnexion Réussie
    Click Element    ${LIEN SE DECONNECTER} 
    Wait Until Element Is Not Visible    ${LIEN SE DECONNECTER} 
Vérifier Que Le Lien De Connexion Est Visible
    Wait Until Element Is Visible    ${LIEN SE CONNECTER}



