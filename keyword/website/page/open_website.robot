*** Settings ***
Resource        ../../../resource/imports.robot
Variables       ../../../resource/common_configs.yaml

*** Keywords ***
Open browser login page
    open browser    ${base_url.phptravels}     ${browser.chrome}
    title should be     Login - PHPTRAVELS

Go to login page
    go to   ${base_url.phptravels}
    title should be     Login - PHPTRAVELS