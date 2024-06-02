*** Settings ***
Documentation     base api

Library             Collections
Library             RequestsLibrary
Resource            ../config/config.resource


*** Variables ***
&{CONTENT_TYPE}                 Content-Type=application/json


*** Keywords ***
Run Post Request
    [Documentation]    Runs a POST request to the specified URL with the provided body data.
    [Arguments]    ${host}  ${url}      ${body}
    Create Session  session  ${host}
    ${resp}=  POST On Session  session
    ...                          ${url}
    ...                          data=${body}
    ...                          expected_status=any
    ...                          headers=${CONTENT_TYPE}
    ...                          verify=${False}
    Status Should Be  200  ${resp}      ${resp.reason}
    Log     resposta: ${resp.json()}
    RETURN    ${resp.json()}
