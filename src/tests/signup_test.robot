*** Settings ***
Library             Browser
Resource            ../resources/keywords.robot
Resource            ../resources/pages/login.robot
Resource            ../resources/pages/signup.robot
Resource            ../resources/utils/utils.robot
Resource            ../resources/pages/common.robot

# Suite Setup    Open Browser To Login Page
# Suite Teardown    Close All Browsers
Test Setup          Open Browser To Login Page
Test Teardown       Close All Browsers


*** Test Cases ***
Cadastrar usuário com sucesso
    Clicar no botão cadastro
    ${nome_gerado}=    Gerar Nome Aleatório
    ${email_gerado}=    Gerar Email Aleatório
    Enviar formulário de cadastro    ${nome_gerado}    ${email_gerado}    123456789
    Esperar Login Com Sucesso
    Navegar para página logado
    Sleep    5 seconds

Cadastrar usuário com email existente
    Clicar no botão cadastro
    Enviar formulário de cadastro    nome    email@email.com    123456789
    Esperar Erro de Login
