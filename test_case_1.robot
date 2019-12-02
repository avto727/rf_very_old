*** Keywords ***
Test Case 1
    Open Browser    ${url}    chrome
    Sleep    1 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    ${time_sleep} seconds
#Шаг 1    Click button "Фильмы"
    Click Element    xpath=.//div[text()="Фильмы"]
    Log To Console    Шаг 1 Клик "Фильмы" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Sleep    2 seconds
    Log To Console    Клик "Назад" произведен
#Шаг 2    Click button "Сериалы"
    Sleep    2 seconds
    Click Element    xpath=.//div[text()="Сериалы"]
    Log To Console    Шаг 2 Клик "Сериалы" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 3    Click button "Мультфильмы"
    Sleep    2 seconds
    Click Element    xpath=.//div[text()="Мультфильмы"]
    Log To Console    Шаг 3 Клик "Мультфильмы" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 4    Click button "Поиск"
    Sleep    2 seconds
    Click Element    css=#search1 > i
    Log To Console    Шаг 4 Клик "Поиск" произведен
    Sleep    2 seconds
    Click Element    css=body > div.screen-keyboard.active > div.screen-keyboard-i-return > div > i
    Log To Console    Клик "Назад" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" (на главную страницу) произведен
#Шаг 5    Click button "Бесплатные"
    Sleep    2 seconds
    Click Element    xpath=.//div[@class="btn-checkbox-box"]
    Log To Console    Шаг 2 Клик "Бесплатные" произведен
    Sleep    2 seconds
    Click Element    xpath=.//div[@class="btn-checkbox-box"]
    Log To Console    Повторный клик "Бесплатные" произведен
#Шаг 6    Click button "Подписки"
    Sleep    2 seconds
    Click Element    xpath=.//div[text()="Подписки"]
    Log To Console    Шаг 6 Клик "Подписки" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 7    Click button "Купленные"
    Sleep    2 seconds
    Click Element    xpath=.//div[text()="Купленные"]
    Log To Console    Шаг 7 Клик "Купленные" произведен
    Sleep    2 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 8    Click button "Избранное"
    Sleep    2 seconds
    Click Element    xpath=.//div[text()="Избранное"]
    Log To Console    Шаг 8 Клик "Избранное" произведен
    Sleep    1 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 9    Click button "Просмотренные"
    Sleep    1 seconds
    Click Element    xpath=.//div[text()="Просмотренные"]
    Log To Console    Шаг 9 Клик "Просмотренные" произведен
    Sleep    1 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
#Шаг 10    Click button "Профиль"
    Sleep    1 seconds
    Click Element    xpath=.//div[text()="Профиль"]
    Log To Console    Шаг 10 Клик "Профиль" произведен
    Sleep    1 seconds
    Click Element    css=#return > i
    Log To Console    Клик "Назад" произведен
    Close Browser
