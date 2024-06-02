*** Settings ***
Documentation       Robot API keyword driven test example

Resource            ../resources/services/regres_registration_API.resource

Suite Setup         Load Environment Variables


*** Variables ***
${EMAIL_EVE}            eve.holt@reqres.in
${PASSWORD_EVE}         pistol
${EMAIL_MICHAEL}        michael.lawson@reqres.in
${PASSWORD_MICHAEL}     xpto
${EMAIL_LINDSAY}        lindsay.ferguson@reqres.in
${PASSWORD_LINDSAY}     xpto


*** Test Cases ***
Successful Registration As Eve
    [Documentation]    Registers a user with email eve.holt@reqres.in and password pistol,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As ${EMAIL_EVE} And ${PASSWORD_EVE}
    Registration Is Executed
    The Correct Token Is Returned

Successful Registration As Michael
    [Documentation]    Registers a user with email michael.lawson@reqres.in and password xpto,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As ${EMAIL_MICHAEL} And ${PASSWORD_MICHAEL}
    Registration Is Executed
    The Correct Token Is Returned

Successful Registration As Lindsay
    [Documentation]    Registers a user with email lindsay.ferguson@reqres.in and password xpto,
    ...    then verifies the correct token is returned.
    Email And Password Are Defined As ${EMAIL_LINDSAY} And ${PASSWORD_LINDSAY}
    Registration Is Executed
    The Correct Token Is Returned
