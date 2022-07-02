*** Settings ***
Documentation    registration api

Resource            api_base.robot



*** Variables ***
${API_HOST}                     https://reqres.in/
${REGISTRATION_ENDPOINT}        api/register
&{contentType}=                 Content-Type=application/json


*** Keywords ***
email and password are definied as ${email} and ${password}
    [documentation]     Keyword to generate body with email and password
    ${body}=    set Variable    {"email": "${email}", "password": "${password}"}
    set test variable       ${body}     ${body}


registration is executed
    [documentation]     Keyword to generate body with email and password

    ${resp}=    run post request    ${API_HOST}     ${REGISTRATION_ENDPOINT}        ${body}
    set test variable     ${resp}        ${resp}


the correct token is returned: ${token}
    [documentation]     Keyword to validate login token
    should be equal    ${resp}[token]         ${token}        Token returned isn't the expected: ${token}