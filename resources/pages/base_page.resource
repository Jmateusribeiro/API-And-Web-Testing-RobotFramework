*** Settings ***
Documentation     Base page

Library             Collections
Library             SeleniumLibrary
Resource            resources/config/config.resource


*** Keywords ***
Open Browser Webpage
    [Documentation]  keyword to open a page in a specific browser
    [Arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window

Default Teardown
    Close All Browsers
