*** Settings ***
Documentation       Arquivo de keywords reutilizáveis para automação do frontend.

Library             Browser
Library             Collections
Resource            actions.robot


*** Variables ***
${BASE_URL}                 http://localhost:4200
${BROWSER}                  chromium    # Pode ser: chromium, firefox, webkit
${HEADLESS}                 ${False}
${EXPECTED_LOGIN_TITLE}     Angulartemplate


*** Keywords ***
Open Browser To Login Page
    [Documentation]    Abre o navegador na página de login.
    New Browser    ${BROWSER}    headless=${HEADLESS}
    New Context
    New Page    ${BASE_URL}
    ${title}=    Get Title
    Should Be Equal As Strings    ${title}    ${EXPECTED_LOGIN_TITLE}

Open Browser To Signup Page
    [Documentation]    Abre o navegador na página de cadastro.
    New Browser    chromium
    New Context
    New Page    ${BASE_URL}/signup

Close All Browsers
    [Documentation]    Fecha o navegador e limpa os recursos.
    Capture Screenshot If Failed
    Close Browser

Capture Screenshot If Failed
    IF    '${TEST STATUS}' == 'FAIL'    Take Screenshot
