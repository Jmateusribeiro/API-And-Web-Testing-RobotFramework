*** Settings ***
Documentation    registration api

Resource            api_base.resource



*** Variables ***
&{contentType}                 Content-Type=application/json


*** Keywords ***
Email And Password Are Definied As ${email} And ${password}
    [documentation]     Keyword to generate body with email and password
    ${body}=    set Variable    {"email": "${email}", "password": "${password}"}
    set test variable       ${body}     ${body}


Registration Is Executed
    [documentation]     Keyword to generate body with email and password

    ${resp}=    Run Post Request    ${API_HOST}     ${REGISTRATION_ENDPOINT}        ${body}
    Set Test Variable     ${resp}        ${resp}


The Correct Token Is Returned: ${token}
    [documentation]     Keyword to validate login token
    Should Be Equal    ${resp}[token]         ${token}        Token returned isn't the expected: ${token}