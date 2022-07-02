*** Settings ***
Documentation     data tables page

Resource            base_page.robot


*** Variables ***
${tables_page}                      https://the-internet.herokuapp.com/tables
${dataTablesTitle}                  Data Tables
${emailTable1}                      //table[@id='table1']//tr/td[3]
${emailTable2}                      //table[@id='table2']//td[@class='email']


*** Keywords ***
go direct to data tables page
    open browser webpage                ${tables_page}    ${BROWSER}
    Wait Until Page Contains            ${dataTablesTitle}


verify ${expectedEmails} from table ${table}

    Wait Until Page Contains    ${table}        2        Available tables: 'Example 1'; 'Example 2'

    ${savedEmails}=     save emails from table      ${table}

    log     Lista de emails: ${savedEmails}
    Lists Should Be Equal    ${savedEmails}    ${expectedEmails}        Incorrect email list; expected emails: @{expectedEmails}        ignore_order=True
    Capture Page Screenshot


save emails from table
    [documentation]     Keyword to save emails from a table
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