*** Settings ***
Resource         ../../../resource/imports.robot
Resource         ../../../keyword/website/page/login_page.robot
Variables        ../../../resource/testdata/test_data.yaml

*** Keywords ***
Login use ${case} to Dashbord
    Type in username    ${username.${case}}
    Type in password    ${password.${case}}