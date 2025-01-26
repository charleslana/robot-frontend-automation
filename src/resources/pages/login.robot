*** Settings ***
Resource    ../actions.robot


*** Variables ***
${EMAIL_INPUT}          email-input
${SENHA_INPUT}          [id="password-input"]
${LOGIN_BUTTON}         btn-primary-login
${USUÁRIO_LOGADO}       [data-test="usuario-autenticado"]
${ADMIN_LOGADO}         [data-test="admin-autenticado"]
${CADASTRO_BUTTON}      btn-secondary-signup


*** Keywords ***
Enviar formulário de login
    [Documentation]    Envia o formulário de login
    ...    Argumentos:
    ...    - ${email}: E-mail do usuário
    ...    - ${senha}: Senha do usuário
    [Arguments]    ${email}    ${senha}

    Preencher Com Id    ${EMAIL_INPUT}    ${email}
    Preencher    ${SENHA_INPUT}    ${senha}
    Clicar Com Id    ${LOGIN_BUTTON}

Clicar no botão cadastro
    Clicar Com Id    ${CADASTRO_BUTTON}
