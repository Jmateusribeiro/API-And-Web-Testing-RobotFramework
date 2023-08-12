*** Settings ***
Documentation     base page

Library             SeleniumLibrary
Library             Collections
Resource            resources/config/config.resource


*** Keywords ***
Open Browser Webpage
    [documentation]  keyword to open a page in a specific browser
    [arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window


Default Teardown
    Close All Browsers