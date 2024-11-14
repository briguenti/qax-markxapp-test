*** Settings ***
Documentation    Elementos e ações da tela de tarefas

Library    AppiumLibrary

*** Variables ***
${NEW_TASK_INPUT}    //*[@resource-id="newTask"]
${CREATE_BUTTON}    //*[@resource-id="createTask"]

*** Keywords ***
Create a new task
    [Arguments]    ${task_name}
    Wait Until Element Is Visible    ${NEW_TASK_INPUT}    5
    Input Text    ${NEW_TASK_INPUT}    ${task_name}
    Click Element    ${CREATE_BUTTON}