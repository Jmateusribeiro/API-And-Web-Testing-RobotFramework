*** Settings ***
Documentation   Robot API BDD with example table test example

Resource        ../resources/services/regres_registration_API.resource
Suite Setup     Load Environment Variables


*** Test Cases ***
Feature: Registration
    [Documentation]    Tests the registration feature with different email and password combinations.
    [Template]         Scenario Outline: Successful Registration
    eve.holt@reqres.in          pistol
    michael.lawson@reqres.in    xpto
    lindsay.ferguson@reqres.in  xpto


*** Keywords ***
Scenario Outline: Successful Registration
    [Documentation]    Registers a user with the given email and password, then verifies the correct token is returned.
    [Arguments]       ${email}     ${password}
    Given Email And Password Are Defined As ${email} And ${password}
    When Registration Is Executed
    Then The Correct Token Is Returned
