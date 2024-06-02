*** Settings ***
Documentation     the internet homepage

Resource            base_page.resource


*** Variables ***
${PAGE_TITLE}                        The Internet
${PAGE_INTRO_TITLE}                    Welcome to the-internet
${DATA_TABLES_FUNCTION}               //a[text()='Sortable Data Tables']


*** Keywords ***
Open The Heroku Homepage
    [Documentation]    Opens the homepage of the Heroku.
    Open Browser Webpage               ${HEROKU_HOMEPAGE}   ${BROWSER}
    Wait Until Page Contains        ${PAGE_INTRO_TITLE}
    Title Should Be         ${PAGE_TITLE}        Page title should be: ${PAGE_TITLE}

Navigate To Data Tables Page
    [Documentation]    Navigates to the data tables page and waits until the element is enabled.
    Wait Until Element Is Enabled       ${DATA_TABLES_FUNCTION}
    Click Element                       ${DATA_TABLES_FUNCTION}
