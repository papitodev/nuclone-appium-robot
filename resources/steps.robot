

***Variables***
${USER_BALENCE}     accessibility_id=user-balance

***Keywords***
Mostra saldo
    Click Element       accessibility_id=show-balance

Meu saldo deve ser de
    [Arguments]     ${saldo}

    Wait Until Element Is Visible   ${USER_BALENCE}   10
    Element Text Should Be          ${USER_BALENCE}   ${saldo}

Exibe saldo
    Wait Until Element Is Visible   ${USER_BALENCE}   10