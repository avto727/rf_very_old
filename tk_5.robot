*** Settings ***
Library           SeleniumLibrary
Library           test_case_4.Test_lib_4

*** Variables ***
${url}            http://services.anybody.ru/alliance/?overrideParams=true&platform=lgn
@{CREDENTIALS}    anybodytest01@gmail.com    333333

*** Test Cases ***
TestCase_4 smTV-4 "Регистрация нового пользователя
    [Documentation]    Тест кейс № 4 smTV-4 "Регистрация нового пользователя"
    ...
    ...    (пока в режиме smok-test)
    Log To Console    Тест
    Test Case 4
