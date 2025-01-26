*** Settings ***
Resource    ../actions.robot


*** Variables ***
${TOAST_SUCESSO}    xpath=//*[@aria-label='Login feito com sucesso!']
${TOAST_ERRO}       xpath=//*[@aria-label='Erro inesperado! Tente novamente mais tarde']


*** Keywords ***
Esperar Login Com Sucesso
    Esperar por seletor    ${TOAST_SUCESSO}

Esperar Erro de Login
    Esperar por seletor    ${TOAST_ERRO}

Navegar para página logado
    Navegar para    ${URL}/user
    Esperar por seletor    ${USUÁRIO_LOGADO}

Navegar para página admin
    Navegar para    ${URL}/admin
    Esperar por seletor    ${ADMIN_LOGADO}
