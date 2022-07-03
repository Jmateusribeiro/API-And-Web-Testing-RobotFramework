*** Settings ***
Documentation     base api

Library             Collections
Library             RequestsLibrary
Resource            ../config/config.robot


*** Keywords ***
run post request
    [Arguments]    ${host}  ${url}      ${body}
    Create Session  session  ${host}
    ${resp}=  POST On Session  session  ${url}  data=${body}      expected_status=any     headers=${contentType}      verify=${False}
    Status Should Be  200  ${resp}      ${resp.reason}
    log     resposta: ${resp.json()}
    [Return]    ${resp.json()}
