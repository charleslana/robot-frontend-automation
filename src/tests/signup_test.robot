*** Settings ***
Library             Browser
Resource            ../resources/keywords.robot

Suite Setup         Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
Signup With Invalid Data
    Log To Console    Cadastro iniciado
