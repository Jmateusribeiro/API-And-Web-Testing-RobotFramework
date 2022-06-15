*** Settings ***
Documentation     Robot web test examples with direct url

Resource        ../_utilities/generic_keywords.robot
Test Teardown  default teardown


*** Variables ***
@{emails}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify emails from table 'Example 1'
    go direct to ${TABLES_PAGE}
    verify ${emails} from table Example 1


Verify emails from table 'Example 2'
    go direct to ${TABLES_PAGE}
    verify ${emails} from table Example 2