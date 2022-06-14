*** Settings ***
Documentation     Generic keywords file

Library             SeleniumLibrary
Library             Collections
Resource            ../_utilities/settings.robot
Resource            ../_utilities/web_elements.robot



*** Variables ***
${BROWSER}      chrome
${WEBPAGE}      https://the-internet.herokuapp.com/


*** Keywords ***
open ${pageTitle} page
    [documentation]     Generic Keyword to open a web page

    open browser webpage               ${WEBPAGE}   ${BROWSER}
    Wait Until Page Contains        ${pageIntroText}
    Title Should Be         ${pageTitle}        Page title should be: ${pageTitle}


naviagte to ${functionName} function
    [documentation]     Generic Keyword to naviagte to a function using click function

    ${element}=     set variable        //a[text()='${functionName}']
    Wait Until Element Is Enabled       ${element}
    Click Element                       ${element}


verify ${expectedEmails} from table ${table}
    [documentation]     Generic Keyword to save and verify emails on a table

    Wait Until Page Contains    ${table}        2        Available tables: 'Example 1'; 'Example 2'

    ${savedEmails}=     save emails from table      ${table}

    log     Lista de emails: ${savedEmails}
    Lists Should Be Equal    ${savedEmails}    ${expectedEmails}        A lista de emails incorreta; lista de emails esperada: @{expectedEmails}        ignore_order=True
    Capture Page Screenshot


save emails from table
    [documentation]     Generic Keyword to save emails from a table
    [Arguments]     ${table}

    @{savedEmails}=     Create List

    IF  '${table}' == 'Example 1'
        ${elements}=       Get WebElements     ${emailTable1}
    ELSE IF     '${table}' == 'Example 2'
        ${elements}=       Get WebElements     ${emailTable2}
    END

    FOR    ${element}    IN    @{elements}
        ${value}=       Get Text        ${element}
        Append To List      ${savedEmails}    ${value}
    END

    [return]    ${savedEmails}