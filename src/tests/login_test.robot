*** Settings ***
Library             Browser
Resource            ../resources/keywords.robot
Resource            ../resources/pages/login.robot
Resource            ../resources/pages/common.robot

# Suite Setup    Open Browser To Login Page
# Suite Teardown    Close All Browsers
Test Setup          Open Browser To Login Page
Test Teardown       Close All Browsers


*** Test Cases ***
Logar com credenciais válidas
    Enviar formulário de login    email2@email.com    123456
    Esperar Login Com Sucesso
    Navegar para página logado

Logar com usuário administrativo
    Enviar formulário de login    email@email.com    123456
    Esperar Login Com Sucesso
    Navegar para página logado
    Navegar para página admin

Logar com credenciais inválidas
    Enviar formulário de login    email@email.com    1234567
    Esperar Erro de Login
