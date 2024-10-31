*** Settings ***
Resource    ../main.robot


*** Variables ***
${SIGN_IN_LINK}     xpath= //a[@class='signin_link']
${SIGN_UP_LINK}     xpath= //a[@class='signup_link']
${EXPLORE_LINK}     xpath= //a[@href='/observations' and text()='Explorar']


*** Keywords ***
Navegar até a página de login
    Wait Until Element Is Visible    ${SIGN_IN_LINK}    10s
    Click Element    ${SIGN_IN_LINK}
    ${url}    Get Location
    Should Match Regexp    ${url}    https://www.inaturalist.org/login

Navegar até página de SignUp
    Wait Until Element Is Visible    ${SIGN_UP_LINK}    10s
    Click Element    ${SIGN_UP_LINK}
    ${url}    Get Location
    Should Match Regexp    ${url}    https://www.inaturalist.org/signup
