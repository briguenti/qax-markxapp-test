*** Settings ***
Documentation    Suite de testes de login

Resource    ../resources/base.resource

# beforeEach
Test Setup    Start session
# afterEach
Test Teardown     Finish session

*** Test Cases ***
Deve logar com sucesso
    Do login
    Wait Until Page Contains    Minhas tarefas    5