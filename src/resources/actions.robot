*** Settings ***
Documentation       Arquivo de ações reutilizáveis para automação do frontend.

Library             Browser
Library             Collections


*** Keywords ***
Preencher
    [Documentation]    Preenche o campo com o texto usando seletor livre.
    ...    Argumentos:
    ...    - ${seletor}: Seletor
    ...    - ${texto}: Texto
    [Arguments]    ${seletor}    ${texto}
    Fill Text    ${seletor}    ${texto}

Preencher Com Id
    [Documentation]    Preenche o campo com o texto usando seletor #id.
    ...    Argumentos:
    ...    - ${id}: Id do seletor
    ...    - ${texto}: Texto
    [Arguments]    ${id}    ${texto}
    Fill Text    [id="${id}"]    ${texto}

Clicar
    [Documentation]    Clica no seletor usando seletor livre.
    ...    Argumentos:
    ...    - ${seletor}: Seletor
    [Arguments]    ${seletor}
    Click    ${seletor}

Clicar Com Id
    [Documentation]    Clica no seletor usando seletor #id.
    ...    Argumentos:
    ...    - ${id}: Id do seletor
    [Arguments]    ${id}
    Click    [id="${id}"]

Esperar por seletor
    [Documentation]    Esperar seletor usando seletor livre.
    ...    Argumentos:
    ...    - ${seletor}: Seletor
    [Arguments]    ${seletor}
    Wait For Elements State    ${seletor}    visible    timeout=10 seconds

Navegar para
    [Documentation]    Navegar para outra página.
    ...    Argumentos:
    ...    - ${url}: Url
    [Arguments]    ${url}
    Go To    ${url}    ${None}    domcontentloaded
