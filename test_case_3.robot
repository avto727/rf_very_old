*** Keywords ***
Test Case 3
    Log To Console    Test Case smTV-3 "Добавление фильма в избранное
    Open Browser    ${url}    chrome
    Sleep    1 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    ${time_sleep} seconds
#Шаг 1    Клик № 1 "Фильмы"
    Click Element    xpath=.//div[text()="Фильмы"]
    Log To Console    Шаг 1 Клик "Фильмы" произведен
#Шаг 2  Переход на карточку фильма  первого постера с главной страницы
    Sleep    6 seconds
    #Wait Until Element Is Visible    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Click Element    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Log To Console    Переход на карточку фильма  первого постера с главной страницы произведен
#Шаг 3    Click button "Избранное"
    Sleep    2 seconds
    Wait Until Element Is Visible    xpath=.//div[text()="В избранное"]
    Click Element    xpath=.//div[text()="В избранное"]
    Log To Console    Шаг 3 Клик "В избранное" произведен
    Sleep    2 seconds
    Wait Until Element Is Visible   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm focused"]
    Element Should Contain   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm focused"]    В избранном
    Log To Console   Смена надписи "В избранное" на "В избранном" подтверждено
#Шаг 4 Клик "Избранное"
    Wait Until Element Is Visible    xpath=.//div[text()="Избранное"]
    Click Element    xpath=.//div[text()="Избранное"]
    Log To Console    Шаг 4 Клик "Избранное" произведен
    Sleep    1 seconds
    Element Should Contain   xpath=.//div[@class="carousel-heading-clear btn btn-trans nav-itm"]    Очистить
    Log To Console  Наличие кнопки "Очистить всё" подтверждено
#Шаг 5    Клик ОК на постере фильма
    Sleep    2 seconds
    Click Element    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Log To Console    Шаг 5 Клик ОК на постере фильма произведен
#Шаг 6  Клик кнопки "Смотреть" на постере фильма
    Wait Until Element Is Visible   xpath=.//div[@class="carousel-lst-itm-ctrls-watch btn btn-white nav-itm"]
    Click Element   xpath=.//div[@class="carousel-lst-itm-ctrls-watch btn btn-white nav-itm"]
    Log To Console       Клик кнопки "Смотреть" на постере фильма произведен
    Sleep    1 seconds
    Click Element   xpath=.//i[@class="i-return"]
    Log To Console      Клик "Назад" произведен
    # Переход на вкладку "Избранное"
    Sleep    4 seconds
    Click Element    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Log To Console    Клик ОК на постере фильма произведен
#Шаг 7
    Sleep    3 seconds
    Click Element    xpath=.//div[text()="Убрать"]
    Log To Console    Шаг 7 Клик кнопки "Убрать" на постере фильма произведен
    Sleep    2 seconds
    Element Should Contain   xpath=.//div[@class="carousel-empty-title"]    сожалению
    Log To Console  Отсутствие постера фильма в избранном подтверждено, текст "К сожалению..." отображается
# Шаг 8
    Wait Until Element Is Visible    xpath=.//div[text()="Фильмы"]
    Click Element    xpath=.//div[text()="Фильмы"]
    Log To Console    Шаг 8 Клик № 2 "Фильмы" произведен
# Шаг 9
    Sleep    5 seconds
    Click Element    xpath=.//div[@class="carousel-lst-itm-overlay"]
    Log To Console  Шаг 9 Переход на карточку фильма  первого постера с главной страницы произведен
    Wait Until Element Is Visible    xpath=.//div[text()="В избранное"]
    Click Element    xpath=.//div[text()="В избранное"]
    Log To Console  Клик кнопки "В избранное" произведен
# Шаг 10        Проверка появления надписи "В избранном"
    Sleep    3 seconds
#    Wait Until Element Is Visible   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm focused"]
#    Element Should Contain   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm"]    В избранном
#    Log To Console  Шаг 10 Смена надписи "В избранное" на "В избранном" подтверждено
# Шаг 11
    Click Element    xpath=.//div[text()="Фильмы"]
    Log To Console    Шаг 11 Клик № 3 "Фильмы" для выбора второго фильма произведен
    Sleep    3 seconds
#  Шаг 12
    Wait Until Element Is Visible    xpath=.//div[@class="carousel-lst-itm nav-itm"]
    Click Element    xpath=.//div[@class="carousel-lst-itm nav-itm"]
    Sleep    2 seconds
    Log To Console  Шаг 12 Переход на карточку фильма второго постера с главной страницы произведен
# Шаг 13
    Wait Until Element Is Visible    xpath=.//div[text()="В избранное"]
    Click Element    xpath=.//div[text()="В избранное"]
    Log To Console    Шаг 13 Клик В избранное произведен
    Sleep    2 seconds
    Element Text Should Be   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm focused"]    В избранном
    Log To Console    Смена надписи "В избранное" на "В избранном" для второго фильма подтверждено
# Шаг 14
    Wait Until Element Is Visible    xpath=.//div[text()="Избранное"]
    Click Element    xpath=.//div[text()="Избранное"]
    Log To Console    Шаг 14 Клик "Избранное" произведен
    Sleep    2 seconds
# Шаг 15
    Wait Until Element Is Visible    xpath=.//div[text()="Очистить все"]
    Click Element    xpath=.//div[text()="Очистить все"]
    Log To Console    Шаг 15  Клик "Очистить все" произведен
    Sleep    1 seconds
    Wait Until Element Contains   xpath=.//div[@class="carousel-empty-title"]    сожалению
    Log To Console    Отсутствие постеров фильмов в избранном подтверждено, текст "К сожалению..." отображается
    Close Browser
