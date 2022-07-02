*** Settings ***
Documentation   Robot API BDD with csv test example

Resource        ../APIs/regres_registration_API.robot

Library            DataDriver      file=data_files\\users_data.csv    dialect=unix


*** Test Cases ***
Scenario: Successful Registration with ${email}
    [Template]      Scenario Outline: Successful Registration


*** Keywords ***
Scenario Outline: Successful Registration
    [Arguments]     ${email}     ${password}   ${token}
    Given email and password are definied as ${email} and ${password}
    When registration is executed
    Then the correct token is returned: ${token}