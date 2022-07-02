*** Settings ***
Documentation   Robot API bdd with example table test example

Resource        ../APIs/regres_registration_API.robot


*** Test Cases ***
Feature: Registration
    [Template]      Scenario Outline: Successful Registration
    eve.holt@reqres.in          xpto    QpwL5tke4Pnpja7X4
    michael.lawson@reqres.in    xpto    QpwL5tke4Pnpja7X7
    lindsay.ferguson@reqres.in  xpto    QpwL5tke4Pnpja7X8

*** Keywords ***
Scenario Outline: Successful Registration
    [Arguments]     ${email}     ${password}   ${token}
    Given email and password are definied as ${email} and ${password}
    When registration is executed
    Then the correct token is returned: ${token}