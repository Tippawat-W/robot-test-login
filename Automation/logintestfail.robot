*** Settings ***
Library             Selenium2Library
Suite Setup         Open browser login page
Test Template       Login fail
Suite Teardown      Close browser
Resource            resource.robot


*** Variables ***
${base_url}     https://www.phptravels.net/login
${browser}      chrome

*** Test Cases ***

Invalid Username        aaaa@phptravels.com     ${Valid_Pass}
Invalid Password        ${Valid_User}           sssmouser
Both Invalid            aaaa@phptravels.com     demouser
Empty Username          ${EMPTY}                ${Valid_Pass}
Empty Password          ${Valid_User}           ${EMPTY}
Both Empty              ${EMPTY}               ${EMPTY}

*** Keywords ***
Login fail
    [Arguments]     ${usename}      ${password}
    Type in username    ${usename}
    Type in password    ${password}
    Submit Login
    Error page
    [Teardown]      Go to login page



