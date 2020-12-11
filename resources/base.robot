***Settings***
Library     AppiumLibrary

Resource    steps.robot

***Keywords***
Abrir App
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Teste
    ...                 app=${EXECDIR}/app/nuclone.apk
    ...                 udid=emulator-5554

    # Checkpoint para garantir que estamos no lugar certo
    Wait Until Element Is Visible   accessibility_id=card-hero      10

Fechar App
    Capture Page Screenshot
    Close Application
