*** Settings ***
Documentation     Config file

Library     OperatingSystem
Library    dotenv


*** Variables ***
${PROJECT_DIR}                  ${CURDIR}/../..

${BROWSER}                      chrome
${HEROKU_HOMEPAGE}              https://the-internet.herokuapp.com/
${HEROKU_TABLES_PAGE}           https://the-internet.herokuapp.com/tables

${API_HOST}                     https://reqres.in/
${REGISTRATION_ENDPOINT}        api/register


*** Keywords ***
Load Environment Variables
    [Documentation]    Load environment variables from a .env file
    File Should Exist   ${PROJECT_DIR}/credentials.env
    ...    msg=The file 'credentials.env' was not found in the root dir of the project

    Load Dotenv    ${PROJECT_DIR}/credentials.env
