
***Keywords***
Mostra saldo
    Click Element       accessibility_id=show-balance

Meu saldo deve ser de
    [Arguments]     ${saldo}

    Wait Until Element Is Visible   accessibility_id=user-balance   10
    Element Text Should Be          accessibility_id=user-balance   ${saldo}