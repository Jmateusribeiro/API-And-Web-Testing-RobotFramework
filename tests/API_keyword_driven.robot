*** Settings ***
Documentation     Robot API keyword driven test example

Resource        resources/services/regres_registration_API.resource
Suite Setup    Load Environment Variables


*** Test Cases ***
Successful Registration
    email and password are definied as eve.holt@reqres.in and pistol
    registration is executed
    the correct token is returned

Successful Registration
    email and password are definied as michael.lawson@reqres.in and xpto
    Registration Is Executed
    the correct token is returned

Successful Registration
    email and password are definied as lindsay.ferguson@reqres.in and xpto
    registration is executed
    the correct token is returned
