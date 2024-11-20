*** Settings ***
Documentation    Suite de testes do cadastro de tarefas

Resource    ../resources/base.resource

Test Setup    Start session
Test Teardown     Finish session

*** Test Cases ***
Deve cadastrar uma nova tarefa com sucesso
    ${task}    Set Variable    Estudar Python
    Remove task from database    ${task}
    Do login
    Create a new task    ${task}
    Should have task    ${task}

Deve remover uma tarefa
    ${task}    Set Variable    Comprar refrigerante
    Remove task from database    ${task}
    Do login
    Create a new task    ${task}
    Should have task    ${task}
    Delete task by name    ${task}
    Wait Until Page Does Not Contain    ${task}

Deve concluir uma tarefa
    [Tags]    done
    ${task}    Set Variable    Terminar curso
    Remove task from database    ${task}
    Do login
    Create a new task    ${task}
    Should have task    ${task}
    Complete task    ${task}
    Task should be complete    ${task}