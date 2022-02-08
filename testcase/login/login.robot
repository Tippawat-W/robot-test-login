*** Settings ***
Resource         ../../resource/imports.robot
Resource         ../../keyword/website/page/open_website.robot
Resource         ../../keyword/website/feature/keyword_login.robot
Resource         ../../keyword/website/page/susccess_login_page.robot
Suite Setup      Open browser login page
Suite Teardown   Close Browser

*** Test Cases ***
Scenario: Login Fail (Empty)
    GIVEN Login use empty to Dashbord
    When Submit Login
    Then Found Error page

Scenario: Login Fail (invalid)
    GIVEN Login use invalid to Dashbord
    When Submit Login
    Then Found Error page

Scenario: Login Success
    GIVEN Login use valid to Dashbord
    When Submit Login
    Then Login Page to Dashbord page


