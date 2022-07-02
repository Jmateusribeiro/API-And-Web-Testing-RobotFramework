*** Settings ***
Documentation     the internet homepage

Resource            base_page.robot


*** Variables ***
${homepage}                         https://the-internet.herokuapp.com/
${pageTitle}                        The Internet
${pageIntroText}                    Welcome to the-internet
${dataTablesFunction}               //a[text()='Sortable Data Tables']


*** Keywords ***
open the internet homepage
    open browser webpage               ${homepage}   ${BROWSER}
    Wait Until Page Contains        ${pageIntroText}
    Title Should Be         ${pageTitle}        Page title should be: ${pageTitle}


naviagte to data tables page
    Wait Until Element Is Enabled       ${dataTablesFunction}
    Click Element                       ${dataTablesFunction}