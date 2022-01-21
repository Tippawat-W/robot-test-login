*** Settings ***
Library             Selenium2Library


*** Variables ***
${base_url}     https://www.phptravels.net/login
${browser}      chrome
${Valid_User}   user@phptravels.com
${Valid_Pass}   demouser


*** Keywords ***
Open browser login page
    open browser    ${base_url}     ${browser}
    title should be     Login - PHPTRAVELS

Go to login page
    go to   ${base_url}
    title should be     Login - PHPTRAVELS

Type in username
    [Arguments]     ${usename}
    element should be enabled       name=email
    input text      name=email      ${usename}

Valid username
    Type in username    ${Valid_User}

Type in password
    [Arguments]     ${password}
    element should be enabled       name=password
    input text      name=password     ${password}

Valid password
    Type in password    ${Valid_Pass}

Submit Login
    click element       //*[@class="btn btn-default btn-lg btn-block effect ladda-button waves-effect"]

Success page
    title should be     Dashboard - PHPTRAVELS

Error page
    title should be     Login - PHPTRAVELS







