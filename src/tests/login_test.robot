*** Settings ***
Library             Browser
Resource            ../resources/keywords.robot

Suite Setup         Open Browser To Login Page
Suite Teardown      Close All Browsers


*** Test Cases ***
Login With Invalid Credentials
    Log To Console    Login iniciado
    Log To Console    ${URL}
