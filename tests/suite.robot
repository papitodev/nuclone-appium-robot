*** Settings ***
Resource    ../resources/base.robot

Test Setup       Abrir app
Test Teardown    Fechar app

***Variables***
${SWITCH_VISIVEL}    xpath=//android.widget.TextView[contains(@text,"visível")]/../android.widget.Switch

*** Test Cases ***
Ver meu saldo
    Partiu tela inicial
    Touch no Saldo
    Meu saldo deve ser igual a    R$ 5.500,00

Deixa conta visível
    Partiu tela inicial
    Deslizar para as configs
    Configurar NuConta
    Switch NuConta visível
    NuConta deve estar visível

***Keywords***
Partiu tela inicial
    Wait Until Page Contains Element    accessibility_id=card-hero    10

Touch no Saldo
    Click Element    accessibility_id=show-balance

Meu saldo deve ser igual a
    [Arguments]               ${saldo}
    Element Text Should Be    accessibility_id=user-balance    ${saldo}

Deslizar para as configs
    Swipe    520    530    520    1630

    Wait Until Page Contains    Me ajuda    10

Configurar NuConta
    Click Text                  Configurar NuConta
    Wait Until Page Contains    Deixar NuConta visível    10

Switch NuConta visível
    Click Element    ${SWITCH_VISIVEL}

NuConta deve estar visível
    Element Attribute Should Match    ${SWITCH_VISIVEL}    checked    true