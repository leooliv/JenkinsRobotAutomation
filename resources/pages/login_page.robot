*** Settings ***
Resource    ../main.robot


*** Variables ***
${USER_EMAIL}           xpath=//input[@id='user_email']
${USER_PASSWORD}        xpath=//input[@id='user_password']
${SIGN_IN_BUTTON}       xpath=//input[@type='submit' and @name='commit']
${SIGN_UP_BUTTON}       xpath=//a[@href='signup-link']


*** Keywords ***
Inserir os dados de login
    [Arguments]    ${username}    ${password}

    Wait Until Element Is Visible    ${USER_EMAIL}    10s
    Wait Until Element Is Visible    ${USER_PASSWORD}    10s

    Input Text    ${USER_EMAIL}    ${username}
    Input Password    ${USER_PASSWORD}    ${password}

Clicar no botão de login
    Wait Until Element Is Visible    ${SIGN_IN_BUTTON}    10s
    Click Element    ${SIGN_IN_BUTTON}
    Wait Until Element Is Visible    xpath=//h1[normalize-space()='spam-caxota']    10s
