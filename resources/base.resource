*** Settings ***
Documentation    Tudo deve começar nesse arquivo

Library    AppiumLibrary

*** Keywords ***
Start session
    Open Application    http://localhost:4723    platformName=Android
    ...                 deviceName=Android Emulator    automationName=UIAutomator2    
    ...                 app=${EXECDIR}/apps/markx.apk    udid=emulator-5554    
    ...                 autoGrantPermissions=true