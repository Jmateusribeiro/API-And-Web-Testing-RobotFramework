*** Settings ***
Documentation     Settings file

Library     SeleniumLibrary


*** Variables ***
${BROWSER}                      chrome
${WEBPAGE}                      https://the-internet.herokuapp.com/
${TABLES_PAGE}                   https://the-internet.herokuapp.com/tables
${SCREENSHOTS_DIR}              C:\Users\Admin\Desktop\RobotFramework_Project\_screenshots
${API_HOST}                     https://reqres.in/
${REGISTRATION_ENDPOINT}        api/register
&{contentType}=                 Content-Type=application/json


*** Keywords ***
open browser webpage
    [documentation]  keyword to open a page in a specific browser
    [arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window


run post request
    [Arguments]    ${host}  ${url}      ${body}
    Create Session  session  ${host}
    ${resp}=  POST On Session  session  ${url}  data=${body}      expected_status=any     headers=${contentType}      verify=${False}
    Status Should Be  200  ${resp}      ${resp.reason}
    log     resposta: ${resp.json()}
    [Return]    ${resp.json()}


default teardown
    Close All Browsers

