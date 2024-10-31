*** Settings ***
Resource        ../resources/main.robot
Resource        ../resources/pages/explore_page.robot

Test Setup      Abrir Navegador


*** Test Cases ***
Cenário 1: Pesquisar uma espécie
    Faça uma busca por uma espécie    Canthon rutilans
