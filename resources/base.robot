*** Settings ***
Library  AppiumLibrary
Library  String

*** Variables ***
${REMOTE_URL}   http://localhost:4723/wd/hub
${APP}          ${EXECDIR}/app/nuclone.apk

*** Keywords ***
#### Setup e Teardown
Abrir app
    Open Application  ${REMOTE_URL}
    ...                 platformName=Android
    ...                 deviceName=Google Pixel 3
    ...                 udid=emulator-5554
    ...                 app=${APP}
    ...                 automationName=uiautomator2
    ...                 autoGrantPermissions=true

    Wait Until Page Contains Element    accessibility_id=card-hero    10

Fechar app
    Capture Page Screenshot
    Close Application