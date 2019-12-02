*** Keywords ***
Test Case 7
    Open Browser    ${url}    chrome
    Sleep    1 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    ${time_sleep} seconds
#Шаг 1    Клик Подписки
    Click Element    xpath=.//div[text()="Подписки"]
    Log To Console    Шаг 1 Клик "Подписки" произведен
    Sleep    6 seconds
#Шаг 2
    Click Element    xpath=/html/body/div[2]/div[2]/div/div[2]/div[2]/div/div/div/div[1]/div[2]
    Log To Console    Клик "Подписка Детская" произведен
    Wait Until Element Is Visible   xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Click Element    xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Log To Console    Клик прокрутки вправо произведен
    Sleep    2 seconds
#Шаг 3
    Click Element    xpath=.//div[@class="btn btn-blue nav-itm"]
    Log To Console    Шаг 3 Клик "Купить подписку" произведен
    Sleep    1 seconds
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[1]/div    Банковская
    Log To Console  Наличие оплаты банковской картой подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[2]/div     Мобильный телефон
    Log To Console  Наличие оплаты c Мобильного телефона подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[3]/div    Личный счет
    Log To Console  Наличие оплаты с Личного счета подтверждено
    Click Element    xpath=/html/body/div[4]/div/div[1]/div/i
    Log To Console   Клик кнопки "X" произведен = закрыт диалог оплаты
    Sleep    1 seconds
#Шаг 4
    Click Element    xpath=.//i[@class="i-return"]
    Log To Console    Шаг 4 Клик "Назад" произведен
    Sleep    1 seconds
#Шаг 5
#    Click Element    xpath=/html/body/div[2]/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div[2]
#    Log To Console   Шаг 5 Клик "Подписка Артхаус" произведен
#    Sleep    5 seconds
#    Wait Until Element Is Visible   xpath=/html/body/div[2]/div[2]/div[2]/div[2]/div[2]/div[4]/i
#    Click Element    xpath=/html/body/div[2]/div[2]/div[2]/div[2]/div[2]/div[4]/i
#    Log To Console   Клик прокрутки вправо произведен
#    Sleep    2 seconds
##Шаг 6
#    Click Element    xpath=.//div[@class="btn btn-blue nav-itm"]
#    Log To Console    Шаг 3 Клик "Купить подписку" произведен
#    Sleep    1 seconds
#    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[1]/div    Банковская
#    Log To Console  Наличие оплаты банковской картой подтверждено
#    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[2]/div     Мобильный телефон
#    Log To Console  Наличие оплаты c Мобильного телефона подтверждено
#    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[3]/div    Личный счет
#    Log To Console  Наличие оплаты с Личного счета подтверждено
#    Click Element    xpath=/html/body/div[4]/div/div[1]/div/i
#    Log To Console   Клик кнопки "X" произведен = закрыт диалог оплаты
#    Sleep    1 seconds
##Шаг 7
#    Click Element    xpath=.//i[@class="i-return"]
#    Log To Console    Шаг 7 Клик "Назад" произведен
#    Sleep    1 seconds
# Шаг 8
    Click Element    xpath=/html/body/div[2]/div[2]/div/div[2]/div[2]/div/div/div/div[2]/div[2]
    Log To Console   Шаг 8 Клик "Подписка anybody+" произведен
    Wait Until Element Is Visible   xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Click Element    xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Log To Console   Клик прокрутки вправо произведен
    Sleep    2 seconds
# Шаг 9
    Click Element    xpath=.//div[@class="btn btn-blue nav-itm"]
    Log To Console    Шаг 3 Клик "Купить подписку" произведен
    Sleep    4 seconds
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[1]/div    Банковская
    Log To Console  Наличие оплаты банковской картой подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[2]/div     Мобильный телефон
    Log To Console  Наличие оплаты c Мобильного телефона подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[3]/div    Личный счет
    Log To Console  Наличие оплаты с Личного счета подтверждено
    Click Element    xpath=/html/body/div[4]/div/div[1]/div/i
    Log To Console   Клик кнопки "X" произведен = закрыт диалог оплаты
    Sleep    1 seconds
# Шаг 10
    Click Element    xpath=.//i[@class="i-return"]
    Log To Console    Шаг 10 Клик "Назад" произведен
    Sleep    1 seconds
# Шаг 11
    Click Element    xpath=/html/body/div[2]/div[2]/div/div[2]/div[2]/div/div/div/div[3]/div[2]
    Log To Console   Шаг 11 Клик "Подписка Отключи рекламу" произведен
    Wait Until Element Is Visible   xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Click Element    xpath=.//i[@class="carousel-scrlr-r-i i-arrow-r"]
    Log To Console   Клик прокрутки вправо произведен
    Sleep    2 seconds
#  Шаг 12
    Click Element    xpath=.//div[@class="btn btn-blue nav-itm"]
    Log To Console    Шаг 3 Клик "Купить подписку" произведен
    Sleep    5 seconds
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[1]/div    Банковская
    Log To Console  Наличие оплаты банковской картой подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[2]/div     Мобильный телефон
    Log To Console  Наличие оплаты c Мобильного телефона подтверждено
    Wait Until Element Contains   xpath=//*[@id="payform"]/div[2]/div[3]/div    Личный счет
    Log To Console  Наличие оплаты с Личного счета подтверждено
    Click Element    xpath=/html/body/div[4]/div/div[1]/div/i
    Log To Console   Клик кнопки "X" произведен = закрыт диалог оплаты
    Sleep    1 seconds
# Шаг 13
    Click Element    xpath=.//i[@class="i-return"]
    Log To Console    Шаг 13 Клик "Назад" произведен
    Sleep    1 seconds
    Close Browser
