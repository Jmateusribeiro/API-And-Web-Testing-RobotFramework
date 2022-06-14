*** Settings ***
Documentation     Settings file

Library           SeleniumLibrary

*** Variables ***
${BROWSER}                  chrome
${WEBPAGE}                  https://the-internet.herokuapp.com/
${SCREENSHOTS_DIR}          C:\Users\Admin\Desktop\RobotFramework_Project\_screenshots


*** Keywords ***
open browser webpage
    [documentation]  keyword to open a page in a specific browser
    [arguments]     ${page}     ${browser}

    Open Browser    ${page}    ${browser}
    Maximize Browser Window


default teardown
    Close All Browsers

