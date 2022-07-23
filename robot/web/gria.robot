*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
*** Keywords ***
Should See Page Title
    Open Browser        https://www.gria.io/oportunidades       chrome
    Title should Be     Gria Vagas Externas
    Close Browser