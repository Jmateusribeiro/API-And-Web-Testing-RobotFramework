*** Settings ***
Documentation     the internet homepage

Resource            base_page.resource


*** Variables ***
${page_title}                        The Internet
${page_intro_text}                    Welcome to the-internet
${data_tables_function}               //a[text()='Sortable Data Tables']


*** Keywords ***
Open The Internet Homepage
    Open Browser Webpage               ${HEROKU_HOMEPAGE}   ${BROWSER}
    Wait Until Page Contains        ${page_intro_text}
    Title Should Be         ${page_title}        Page title should be: ${page_title}


Naviagte To Data Tables Page
    Wait Until Element Is Enabled       ${data_tables_function}
    Click Element                       ${data_tables_function}