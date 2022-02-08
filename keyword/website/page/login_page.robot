*** Settings ***
Resource         ../../../resource/imports.robot


*** Variables ***
${text_name}    name=email
${text_pass}    name=password
${login_button}     //*[@class="btn btn-default btn-lg btn-block effect ladda-button waves-effect"]

*** Keywords ***
Type in username
    [Arguments]     ${username}
    element should be enabled       ${text_name}
    input text      ${text_name}      ${username}

Type in password
    [Arguments]     ${password}
    element should be enabled       ${text_pass}
    input text      ${text_pass}     ${password}

Submit Login
    click element       ${login_button}

Found Error page
    title should be     Login - PHPTRAVELS