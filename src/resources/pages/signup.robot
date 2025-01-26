*** Settings ***
Resource    ../actions.robot


*** Variables ***
${SIGNUP_NOME_INPUT}                name-input
${SIGNUP_EMAIL_INPUT}               email-input
${SIGNUP_SENHA_INPUT}               password-input
${SIGNUP_SENHA_CONFIRMADA_INPUT}    password-confirm-input
${SIGNUP_REGISTRAR_BUTTON}          btn-primary-signup


*** Keywords ***
Enviar formulário de cadastro
    [Documentation]    Envia o formulário de cadastro
    ...    Argumentos:
    ...    - ${nome}: Nome do usuário
    ...    - ${email}: E-mail do usuário
    ...    - ${senha}: Senha do usuário
    [Arguments]    ${nome}    ${email}    ${senha}
    Preencher Com Id    ${SIGNUP_NOME_INPUT}    ${nome}
    Preencher Com Id    ${SIGNUP_EMAIL_INPUT}    ${email}
    Preencher Com Id    ${SIGNUP_SENHA_INPUT}    ${senha}
    Preencher Com Id    ${SIGNUP_SENHA_CONFIRMADA_INPUT}    ${senha}
    Clicar Com Id    ${SIGNUP_REGISTRAR_BUTTON}
