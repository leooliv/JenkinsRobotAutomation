*** Settings ***
Resource    ../main.robot


*** Variables ***
${SEARCH_FIELD}     xpath= //div[contains(@class, 'searchwrapper')]//input
${SEARCH_BUTTON}    xpath= //button[contains(@class, 'show-btn')]
${TAXON_RESULTS}    xpath= //div[contains(@class, 'taxon-result')]


*** Keywords ***
Faça uma busca por uma espécie
    [Arguments]    ${species}
    Wait Until Element Is Visible    ${SEARCH_BUTTON}
    Click Button    ${SEARCH_BUTTON}
    Wait Until Element Is Visible    ${SEARCH_FIELD}    10s
    Input Text    ${SEARCH_FIELD}    ${species}
    Press Keys    ${SEARCH_FIELD}    ENTER
    Wait Until Element Is Visible    ${TAXON_RESULTS}
    Should Not Be Empty    ${TAXON_RESULTS}
    ${taxon_elements}=    Get WebElements    ${TAXON_RESULTS}
    ${found}=    Set Variable    False

    FOR    ${element}    IN    @{taxon_elements}
        ${text}=    Get Text    ${element}
        IF    '$species' in '$text'
            ${found}=    Set Variable    True
            Log    Species Found
            BREAK
        END
    END

    IF    ${found} == False    Log    Species not found
