*** Settings ***
Documentation   Robot API BDD with CSV test example

Resource        ../resources/services/regres_registration_API.resource

Library         DataDriver      file=data_files\\users_data.csv    dialect=unix
Suite Setup     Load Environment Variables


*** Test Cases ***
# robocop: off=too-few-calls-in-test-case
Scenario: Successful Registration With ${email}
    [Documentation]    Tests successful registration with different email addresses from a CSV file.
    [Template]         Scenario Outline: Successful Registration


*** Keywords ***
Scenario Outline: Successful Registration
    [Documentation]    Registers a user with the given email and password, then verifies the correct token is returned.
    [Arguments]        ${email}     ${password}
    Given Email And Password Are Defined As ${email} And ${password}
    When Registration Is Executed
    Then The Correct Token Is Returned
