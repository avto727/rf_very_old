*** Settings ***
Library           SeleniumLibrary
Library           Projekt_Smart_LG.test_case_4.Test_lib_4
Library           Projekt_Smart_LG.test_case_5.Test_lib_5
Library           Projekt_Smart_LG.test_case_6.Test_lib_6
Library           Projekt_Smart_LG.test_case_8_26.Test_lib_8
Library           Projekt_Smart_LG.test_case_9.Test_lib_9
Library           Projekt_Smart_LG.test_case_11.Test_lib_11
Library           Projekt_Smart_LG.test_case_12.Test_lib_12
Library           Projekt_Smart_LG.test_case_13.Test_lib_13
Library           Projekt_Smart_LG.test_case_16.Test_lib_16
Library           Projekt_Smart_LG.test_case_17.Test_lib_17
Library           Projekt_Smart_LG.test_case_18.Test_lib_18
Library           Projekt_Smart_LG.test_case_19.Test_lib_19
Library           Projekt_Smart_LG.test_case_20.Test_lib_20
Library           Projekt_Smart_LG.test_case_24.Test_lib_24

Resource     test_case_1.robot
Resource     test_case_2.robot
Resource     test_case_3.robot
Resource     test_case_7.robot

*** Variables ***
${time_sleep}    16
${url}            http://services.anybody.ru/alliance/?overrideParams=true&platform=lgn
@{CREDENTIALS}    anybodytest01@gmail.com    333333

*** Test Cases ***
TestCase_1
#    Test Case 1
#    Test Case 2
#    Test Case 3
#    Test Case 4
#    Test Case 5
#    Test Case 6
#    Test Case 7
#    Test Case 9
#    Test Case 11
#    Test Case 12
#    Test Case 13
    Test Case 16
#    Test Case 17
#    Test Case 18 LG
#    Test Case 19
#    Test Case 20
#    Test Case 24


*** Keywords ***
Login
    Click Link    css=.navbar_link-auth_wrap > a:nth-child(1)
    Input Text    id=auth-login    @{CREDENTIALS}[0]
    Input Password    id=auth-password    @{CREDENTIALS}[1]
    Click Button    id=auth-submit
