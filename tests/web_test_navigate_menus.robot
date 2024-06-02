*** Settings ***
Documentation     Robot web test examples with menu navegation

Resource        ../resources/pages/data_tables_page.resource
Resource        ../resources/pages/the_internet_homepage.resource
Test Teardown  Default Teardown


*** Variables ***
@{EMAILS}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify Emails From Table 'Example 1'
    [Documentation]    Verifies that emails from the table 'Example 1' match the expected list.
    Open The Heroku Homepage
    Navigate To Data Tables Page
    Verify ${emails} From Table Example 1

Verify Emails From Table 'Example 2'
    [Documentation]    Verifies that emails from the table 'Example 2' match the expected list.
    Open The Heroku Homepage
    Navigate To Data Tables Page
    Verify ${emails} From Table Example 2
