*** Settings ***
Documentation    Suite de testes do cadastro de tarefas

Resource    ../resources/base.resource

Test Setup    Start session
Test Teardown     Finish session

*** Test Cases ***
Deve cadastrar uma nova tarefa com sucesso
    Do login
    Create a new task    Estudar Robot Framework com Appium
    Sleep    5
    #Should Contain    //android.widget.TextView[@resource-id="taskText"]    teste