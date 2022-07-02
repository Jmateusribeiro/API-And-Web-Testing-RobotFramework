*** Settings ***
Documentation     Robot web test examples with menu navegation

Resource        ../pages/data_tables_page.robot
Resource        ../pages/the_internet_homepage.robot
Test Teardown  default teardown


*** Variables ***
@{emails}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify emails from table 'Example 1'
    open the internet homepage
    naviagte to data tables page
    verify ${emails} from table Example 1


Verify emails from table 'Example 2'
    open the internet homepage
    naviagte to data tables page
    verify ${emails} from table Example 2