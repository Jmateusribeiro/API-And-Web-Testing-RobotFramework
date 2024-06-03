*** Settings ***
Documentation       Robot API keyword driven test example

Resource            ../resources/services/regres_registration_API.resource

Suite Setup         Load Environment Variables


*** Test Cases ***
# robocop: off=wrong-case-in-keyword-name
Successful Registration As Eve
    [Documentation]    Registers a user with email eve.holt@reqres.in and password pistol,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As eve.holt@reqres.in And pistol
    Registration Is Executed
    The Correct Token Is Returned

Successful Registration As Michael
    [Documentation]    Registers a user with email michael.lawson@reqres.in and password xpto,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As michael.lawson@reqres.in And xpto
    Registration Is Executed
    The Correct Token Is Returned

Successful Registration As Lindsay
    [Documentation]    Registers a user with email lindsay.ferguson@reqres.in and password xpto,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As lindsay.ferguson@reqres.in And xpto
    Registration Is Executed
    The Correct Token Is Returned
