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
 TestCase_1 smTV-1:Главная страница
    [Documentation]   режим smok-test
    Log To Console    Test Case smTV-1:Главная страница
    Test Case 1

 TestCase_2 smTV-2:Карточка фильма
    [Documentation]   режим smok-test
    Log To Console    Test Case smTV-2:Карточка фильма
    Test Case 2

 TestCase_3 smTV-3 "Добавление фильма в избранное
    [Documentation]    режим smok-test
    Test Case 3

 TestCase_4 smTV-4 "Регистрация нового пользователя
    [Documentation]    режим smok-test
    Log To Console    Тест
    Test Case 4

 TestCase_5 smTV-5:Кнопка Бесплатные
    [Documentation]   режим smok-test
    Log To Console    Test Case smTV-5:Кнопка Бесплатные
    Test Case 5

 TestCase_6 smTV-6 "Кнопка Поиск"
    [Documentation]    режим smok-test
    Log To Console    Тест 6
    Test Case 6

 TestCase_7 smTV-7:Подписки
    [Documentation]  режим smok-test
    Log To Console    Test Case smTV-7:Подписки
    Test Case 7

 # TestCase_8 smTV-26:Промокоды
 #    [Documentation]    режим smok-test
 #    Log To Console    Тест 8
 #    Test Case 8

 TestCase_9 smTV-9 "Оплата просмотра фильма банковской картой"
    [Documentation]    режим smok-test
    Log To Console    Тест 9
    Test Case 9

TestCase_11 smTV-11 "Оплата просмотра фильма мобильным телефоном"
    [Documentation]    режим smok-test
    Log To Console    Тест 11
    Test Case 11

 TestCase_12 smTV-12 "Оплата просмотра фильма с личного счета"
    [Documentation]    режим smok-test
    Log To Console    Тест 12
    Test Case 12

 TestCase_13 smTV-13 "Просмотр фильма"
    [Documentation]    режим smok-test
    Log To Console    Тест 13
    Test Case 13

 TestCase_16 smTV-16:Реклама во время просмотра фильма"
    [Documentation]    режим smok-test
    Log To Console    Тест 16
    Test Case 16

 TestCase_17 smTV-17 "Фильтр"
    [Documentation]    режим smok-test
    Log To Console    Тест 17
    Test Case 17

 TestCase_18 smTV-18 "Родительский контроль"
     [Documentation]    режим smok-test
     Log To Console    Тест 18
     Test Case 18 LG

 TestCase_19 smTV-19 "Пополнение личного счета"
    [Documentation]    режим smok-test
    Log To Console    Тест 19
    Test Case 19

 TestCase_20 smTV-20 "Поддержка"
    [Documentation]    режим smok-test
    Log To Console    Тест 20
    Test Case 20

 TestCase_24 smTV-24 "Сезоны сериалов"
     [Documentation]    режим smok-test
     Log To Console    Тест 24
     Test Case 24


*** Keywords ***
Login
    Click Link    css=.navbar_link-auth_wrap > a:nth-child(1)
    Input Text    id=auth-login    @{CREDENTIALS}[0]
    Input Password    id=auth-password    @{CREDENTIALS}[1]
    Click Button    id=auth-submit
