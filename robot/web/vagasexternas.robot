*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BROWSER}        chrome
${url}            https://www.gria.io/oportunidades

*** Settings ***
Resource        gria.robot

*** Test Cases ***
*** Keywords ***

Preencher busca campo1
    [Arguments]                     ${uname}      

    Input Text                      css:input[name=usuario]        ${uname}
    
    Click Element                   css:button[name='action']
Preencher busca campo2
    [Arguments]                     ${uname}       

    Input Text                      css:input[name=usuario]        ${uname}
           
    Click Element                   css:button[name='action']

Clicar no botão Pesquisar
    Click Button                    name=submit_search

Clicar na vaga
    Click Button                  name=submit_vaga

Cadastrar curriculo

    Click Button                  name=submit_curriculo

