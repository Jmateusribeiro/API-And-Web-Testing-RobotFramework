*** Settings ***
Documentation     base api

Library             Collections
Library             RequestsLibrary
Resource            resources/config/config.resource


*** Keywords ***
Run Post Request
    [Arguments]    ${host}  ${url}      ${body}
    Create Session  session  ${host}
    ${resp}=  POST On Session  session  ${url}  data=${body}      expected_status=any     headers=${contentType}      verify=${False}
    Status Should Be  200  ${resp}      ${resp.reason}
    Log     resposta: ${resp.json()}
    RETURN    ${resp.json()}
