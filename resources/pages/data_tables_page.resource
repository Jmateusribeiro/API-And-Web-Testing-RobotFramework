*** Settings ***
Documentation     data tables page

Resource            base_page.resource


*** Variables ***
${data_tables_title}                  Data Tables
${email_table_1}                      //table[@id='table1']//tr/td[3]
${email_table_2}                      //table[@id='table2']//td[@class='email']


*** Keywords ***
Go Direct To Data Tables Page
    Open Browser Webpage                ${HEROKU_TABLES_PAGE}    ${BROWSER}
    Wait Until Page Contains            ${data_tables_title}

Verify ${expectedEmails} From Table ${table}

    Wait Until Page Contains    ${table}    2   Available tables: 'Example 1'; 'Example 2'

    ${savedEmails}=     Save Emails From Table  ${table}

    Log     Lista de emails: ${savedEmails}
    Lists Should Be Equal    ${savedEmails}    ${expectedEmails}    Incorrect email list; expected emails: @{expectedEmails}        ignore_order=True
    Capture Page Screenshot

Save Emails From Table
    [Documentation]     Keyword to save emails from a table
    [Arguments]     ${table}

    @{savedEmails}=     Create List

    IF  $table == 'Example 1'
        ${elements}=       Get WebElements     ${email_table_1}
    ELSE IF     $table == 'Example 2'
        ${elements}=       Get WebElements     ${email_table_2}
    END

    FOR    ${element}    IN    @{elements}
        ${value}=       Get Text        ${element}
        Append To List      ${savedEmails}    ${value}
    END

    RETURN    ${savedEmails}
