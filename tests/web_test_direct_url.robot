*** Settings ***
Documentation     Robot web test examples with direct url

Resource        resources/pages/data_tables_page.resource
Test Teardown   Default Teardown


*** Variables ***
@{emails}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify Emails From Table 'Example 1'
    Go Direct To Data Tables Page
    Verify ${emails} From Table Example 1

Verify Emails From Table 'Example 2'
    Go Direct To Data Tables Page
    Verify ${emails} From Table Example 2
