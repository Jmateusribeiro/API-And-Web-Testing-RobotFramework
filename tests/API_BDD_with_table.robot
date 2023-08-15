*** Settings ***
Documentation   Robot API bdd with example table test example

Resource        resources/services/regres_registration_API.resource
Suite Setup    Load Environment Variables


*** Test Cases ***
Feature: Registration
    [Template]      Scenario Outline: Successful Registration
    eve.holt@reqres.in          pistol
    michael.lawson@reqres.in    xpto
    lindsay.ferguson@reqres.in  xpto


*** Keywords ***
Scenario Outline: Successful Registration
    [Arguments]     ${email}     ${password}
    Given email and password are definied as ${email} and ${password}
    When registration is executed
    Then the correct token is returned
