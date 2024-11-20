*** Settings ***
Documentation    Elementos e ações da tela de Login

Library    AppiumLibrary

*** Variables ***
${API_IP}    192.168.0.102

*** Keywords ***
Do login
    Input Text    //*[@resource-id="apiIp"]    ${API_IP}
    Click Element    //*[@resource-id="signInButton"]