*** Settings ***
Documentation     base page

Library             SeleniumLibrary
Library             Collections
Resource            ../config/config.robot


*** Keywords ***
open browser webpage
    [documentation]  keyword to open a page in a specific browser
    [arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window


default teardown
    Close All Browsers