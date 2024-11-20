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

Should have task
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    //*[@resource-id="taskText" and @text="${task_name}"]    5

Delete task by name
    [Arguments]    ${task_name}

    Click Element    //*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]
    ${button}    Set Variable   //*[@resource-id="android:id/button2"]
    Wait Until Element Is Visible    ${button}     5
    Click Element    ${button}

Complete task
    [Arguments]    ${task_name}

    Click Element    //*[@text="${task_name}"]/..

Task should be complete
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    //*[@text="${task_name}"]/..//android.widget.ImageView