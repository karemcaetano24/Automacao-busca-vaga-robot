*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}            https://www.gria.io/oportunidades

*** Settings ***
Resource        gria.robot

Test Setup      Inicia sessão 
Test Teardown   Encerra sessão

*** Test Cases ***
*** Keywords ***

Login com sucesso
    [tags]                          login_sucesso
    Go To                           ${url}
    Preencher Login                 karemcaetano       123456



Login invalido
    Go To                           ${url}
    Preencher Login                 teste        102030

    Mensagem alerta Login           Falha ao fazer o login
*** Keywords ***
Preencher Login
    [Arguments]                     ${uname}       ${pass}

    Input Text                      css:input[name=usuario]        ${uname}
    Input Text                      css:input[name=senha]          ${pass}
    Click Element                   css:button[name='action']

Mensagem alerta Login
    [Arguments]                     ${mensagem_esperada}

    ${mensagem}=                     Get webElement          id:toast-container
    Should Contain                  ${mensagem.text}         ${mensagem_esperada}

