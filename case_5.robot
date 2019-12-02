*** Keywords ***
Test Case n5
    Open Browser    ${url}    chrome
    Sleep    2 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    ${time_sleep} seconds
#Шаг 1
    Click Element    xpath=.//div[@class="btn-checkbox-box"]
    Log To Console    Шаг 1 'Установлен чекбокс "Бесплатные"
    Sleep    2 seconds
    #Click Element    xpath=.//div[@class="btn-checkbox-box"]
    Log To Console    Клик "Бесплатные" произведен
    #Sleep    2 seconds
#Шаг 2
    Click Element    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Log To Console    Шаг 2 Переход на карточку фильма  первого постера с главной страницы произведен
    Sleep    2 seconds
#Шаг 3
    Click Element    xpath=.//div[text()="Смотреть"]
    Log To Console    Шаг 3 Click кнопки "Смотреть" произведен
    #Локатор кнопки "Отключи рекламу xpath=.//div[@class="btn-remove-ad nav-itm focused"]
    Sleep    90 seconds
    Click Element    xpath=.//i[@class="i-stop"]
    Log To Console      Клик кнопки "stop" произведен
    Sleep    4 seconds
#Шаг 4
#    Click Element    xpath=.//div[text()="Смотреть"]
#    Log To Console    Шаг 3 Click № 2 кнопки "Смотреть" произведен
#    Sleep    60 seconds
#    Click Element    xpath=.//i[@class="i-stop"]
#    Log To Console      Клик кнопки "stop" произведен
    Close Browser