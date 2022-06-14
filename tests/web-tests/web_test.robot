*** Settings ***
Documentation     Robot web test examples

Resource        ../../_utilities/generic_keywords.robot
Test Teardown  default teardown


*** Variables ***
@{emails}=      tconway@earthlink.net       jsmith@gmail.com    fbach@yahoo.com    jdoe@hotmail.com


*** Test Cases ***
Verify emails from table 'Example 1'
    open ${pageTitle} page
    naviagte to ${dataTables} function
    verify ${emails} from table Example 1


Verify emails from table 'Example 2'
    open ${pageTitle} page
    naviagte to ${dataTables} function
    verify ${emails} from table Example 2