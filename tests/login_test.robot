*** Settings ***
Resource            ../resources/main.robot
Resource            ../resources/pages/home_page.robot

Test Setup          Abrir Navegador
Test Teardown       Fechar Navegador


*** Test Cases ***
Cenário 1: Fazer login com a conta do spam.caxota
    Navegar até a página de login
    Inserir os dados de login    leonardo.dolivier@gmail.com    TesteArcadia13@$
    Clicar no botão de login

Cenário 2: Verificar o link para o signup
    Navegar até página de SignUp
