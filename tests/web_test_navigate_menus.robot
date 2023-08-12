*** Settings ***
Documentation     Robot web test examples with menu navegation

Resource        resources/pages/data_tables_page.resource
Resource        resources/pages/the_internet_homepage.resource
Test Teardown  default teardown


*** Variables ***
@{emails}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify Emails From Table 'Example 1'
    Open The Internet Homepage
    Naviagte To Data Tables Page
    Verify ${emails} From Table Example 1


Verify Emails From Table 'Example 2'
    Open The Internet Homepage
    Naviagte To Data Tables Page
    Verify ${emails} From Table Example 2