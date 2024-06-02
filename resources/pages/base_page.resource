*** Settings ***
Documentation     Base page

Library             Collections
Library             SeleniumLibrary
Resource            ../config/config.resource


*** Keywords ***
Open Browser Webpage
    [Documentation]  keyword to open a page in a specific browser
    [Arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window

Default Teardown
    [Documentation]  keyword to close all browsers
    Close All Browsers
