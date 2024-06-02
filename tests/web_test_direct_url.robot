*** Settings ***
Documentation     Robot web test examples with direct url
Resource          ../resources/pages/data_tables_page.resource
Test Teardown     Default Teardown


*** Variables ***
@{EMAILS}         tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify Emails From Table 'Example 1'
    [Documentation]    Verifies that EMAILS from the table 'Example 1' match the expected list.
    Go Direct To Data Tables Page
    Verify ${EMAILS} From Table Example 1

Verify Emails From Table 'Example 2'
    [Documentation]    Verifies that EMAILS from the table 'Example 2' match the expected list.
    Go Direct To Data Tables Page
    Verify ${EMAILS} From Table Example 2
