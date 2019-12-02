*** Settings ***
Library           SeleniumLibrary
Library           my_lib.Custom_lib
Library           test_case_4.Test_lib_4

*** Variables ***
${url}            http://services.anybody.ru/alliance/?overrideParams=true&platform=lgn
@{CREDENTIALS}    anybodytest01@gmail.com    333333

*** Test Cases ***
TestCase_4
    [Documentation]    smTV-4 "Регистрация нового пользователя"
    ...
    ...    (пока в режиме smok-test)
    Log To Console    Test Case smTV-4 "Регистрация нового пользователя"
    Open Browser    ${url}    chrome
    Sleep    1 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    16 seconds
    ${LOGIN_TIME} =    Mail Random
    Log To Console      ${LOGIN_TIME}
#Шаг 1    Клик Профиль
    Click Element    xpath=.//div[text()="Профиль"]
    Log To Console    Шаг 1 Клик "Профиль" произведен
    Sleep    1 seconds
#Шаг 2
    Click Element    xpath=.//div[text()="Зарегистрироваться"]
    Log To Console    Шаг 2 Клик "Зарегистрироваться" № 1 произведен
    Sleep    1 seconds
#Шаг 3
    Click Element    xpath=/html/body/div[2]/div[2]/div[6]/div/div[1]/input
    Log To Console    Шаг 3 Клик "Введите e-mail" произведен
    Sleep    1 seconds
    Click Element    xpath=.//i[@class="i-globe"]
    Inputc Logins  UNSEEN  FROM     ${LOGIN_TIME}
    Log To Console   Ввод № 1 логина произведен
#Шаг 4
    Sleep    2 seconds
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(2) > input
    Log To Console    Шаг 4 Клик "Введите пароль" произведен
    Sleep    1 seconds
#Шаг 5
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(3) > input
    Log To Console    Шаг 5 Клик "Введите свой пароль ещё раз" произведен
    Input Text  ${LOGIN_TIME}
    Log To Console    Шаг 5 Клик Повторный ввод пароля произведен
    Sleep    1 seconds
#Шаг 6
    Click Element   xpath=xpath=.//div[text()="Зарегистрироваться"]
    Log To Console      Клик "Зарегистрироваться" № 2 произведен
    Sleep    1 seconds
#Шаг 7
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div.profile-usr-login-inputs > div:nth-child(2) > input
    Log To Console    Шаг 7 Клик "Введите пароль" произведен
    Sleep    1 seconds
    Input Text  ${LOGIN_TIME}
    Log To Console  Ввод пароля произведен
    Sleep    1 seconds
# Шаг 8
    Click Element    xpath=.//div[text()="Войти"]
    Log To Console    Шаг 8 Клик "Войти" произведен
    Sleep    2 seconds
# Шаг 9
    Click Element    xpath=.//i[@class="i-return"]
    Log To Console  Шаг 9 Клик "Назад" произведен
    Sleep    2 seconds
# Шаг 10
    Click Element    xpath=.//i[@class="i-return"]
    Log To Console   Шаг 10 Клик "Назад" произведен
    Sleep    2 seconds
# Шаг 11
    Click Element    xpath=.//span[text()="Да"]
    Log To Console    Шаг 11 Клик "Да - выйти из приложения" произведен
    Sleep    2 seconds
#  Шаг 12


# Шаг 13
    Click Element    xpath=.//div[text()="Профиль"]
    Log To Console    Шаг 13 Клик "Профиль" произведен
    Sleep    1 seconds
# Шаг 14
    Click Element    xpath=.//div[text()="Выйти из профиля"]
    Log To Console    Шаг 14 Клик "Выйти из профиля" произведен
    Sleep    1 seconds
# Шаг 15
    Click Element    xpath=.//div[text()="Зарегистрироваться"]
    Log To Console    Шаг 15 Клик "Зарегистрироваться" № 3 произведен
    Sleep    1 seconds
# Шаг 16
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(1) > input
    Log To Console    Шаг 16 Клик "Введите e-mail" произведен
    Sleep    1 seconds
    Input Text  ${LOGIN_TIME}
    Log To Console   Ввод № 2 логина произведен
    Sleep    1 seconds
# Шаг 17
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(2) > input
    Log To Console    Шаг 17 Клик "Введите пароль" произведен
    Sleep    1 seconds
# Шаг 18
    Click Element    css=body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(3) > input
    Log To Console    Шаг 18 Клик "Введите свой пароль ещё раз" произведен
    Sleep    1 seconds
    Input Text  ${LOGIN_TIME}
    Log To Console   Повторный ввод пароля произведен
    Sleep    1 seconds
# Шаг 19
    Click Element    xpath=.//div[text()="Зарегистрироваться"]
    Log To Console    Шаг 15 Клик "Зарегистрироваться" № 3 произведен
    Sleep    1 seconds
    Wait Until Element Contains   xpath=.//div[@class="msg-error"]    существует
    Log To Console  наличие зарегистрированного пользователя с таким е-майлом подтверждено