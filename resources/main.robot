*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
### Pages ###
Resource    pages/home_page.robot
Resource    pages/login_page.robot
Resource    pages/explore_page.robot
Resource    pages/user_home_page.robot


*** Variables ***
${BROWSER}      chrome
${URL}          https://www.inaturalist.org


*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser
