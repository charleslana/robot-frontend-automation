*** Settings ***
Documentation       Arquivo de keywords reutilizáveis para automação do frontend.

Library             Browser
Library             Collections


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

Fill Login Form
    [Documentation]    Preenche o formulário de login.
    ...    Argumentos:
    ...    - ${username}: Nome do usuário.
    ...    - ${password}: Senha do usuário.
    [Arguments]    ${username}    ${password}
    Fill Text    [name="username"]    ${username}
    Fill Text    [name="password"]    ${password}

Fill Signup Form
    [Documentation]    Preenche o formulário de cadastro.
    ...    Argumentos:
    ...    - ${username}: Nome do usuário.
    ...    - ${email}: E-mail do usuário.
    ...    - ${password}: Senha do usuário.
    [Arguments]    ${username}    ${email}    ${password}
    Fill Text    [name="username"]    ${username}
    Fill Text    [name="email"]    ${email}
    Fill Text    [name="password"]    ${password}

Submit Form
    [Documentation]    Submete o formulário atual clicando no botão "Enviar".
    Click    text="Enviar"

Verify Page Contains Text
    [Documentation]    Verifica se um texto específico está presente na página.
    [Arguments]    ${text}
    Log To Console    ${text}

Close All Browsers
    [Documentation]    Fecha o navegador e limpa os recursos.
    Close Browser
