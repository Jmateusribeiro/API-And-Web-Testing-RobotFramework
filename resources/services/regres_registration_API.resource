*** Settings ***
Documentation    registration api

Resource        api_base.resource


*** Keywords ***
Email And Password Are Defined As ${email} And ${password}
    [Documentation]     Keyword to generate body with email and password
    ${body}=    Set Variable    {"email": "${email}", "password": "${password}"}
    Set Test Variable    ${EMAIL}
    Set Test Variable   ${BODY}

Registration Is Executed
    [Documentation]     Keyword to generate body with email and password

    ${resp}=    Run Post Request    ${API_HOST}     ${REGISTRATION_ENDPOINT}        ${body}
    Set Test Variable     ${RESP}

The Correct Token Is Returned
    [Documentation]     Keyword to validate login token
    Set Log Level    NONE
    ${token}=    Get Environment Variable    ${email}
    Set Log Level    INFO
    Should Be Equal    ${resp}[token]         ${token}
    ...    Token returned '${resp}[token]' isn't the expected    values=${False}
