*** Keywords ***
Test Case 2
    Open Browser    ${url}    chrome
    Sleep    1 seconds
    SeleniumLibrary.Maximize Browser Window
    Sleep    ${time_sleep} seconds
#Предусловие:   Переход на карточку фильма  2-го постера с главной страницы
    Click Element   xpath=/html/body/div[2]/div[2]/div/div[2]/div[2]/div/div/div[1]/div[2]/div[3]
    Sleep    2 seconds
#Шаг 1    Click button "Смотреть"
    Click Element    xpath=.//div[text()="Смотреть"]
    Log To Console    Шаг 1 Клик "Смотреть" произведен
    Sleep    5 seconds
    Element Text Should Be   xpath=.//div[@class="dlg-cnt-title dlg-paytype-title"]    Выберите вариант оплаты
    Log To Console    Появление диалога оплаты подтверждено
    Sleep    1 seconds
    #Click button "X"
    Click Element    xpath=/html/body/div[4]/div/div[1]/div/i
    Log To Console     Клик "X" произведен
    Sleep    1 seconds
#Шаг 2  Клик кнопки "Трейлер"
    Click Element    xpath=.//div[text()="Трейлер"]
    Log To Console    Шаг 2 Клик кнопки "Трейлер" произведен, идет воспроизведение трейлера
    Sleep    3 seconds
    #Click button "stop"
    Click Element    xpath=.//i[@class="i-stop"]
#Шаг 3    Click button "Избранное"
    Sleep    1 seconds
    Click Element    xpath=.//div[text()="В избранное"]
    Log To Console    Шаг 3 Клик "В избранное" произведен
    Sleep    1 seconds
    Wait Until Element Contains   xpath=.//div[@class="video-toolbar-actions-fav-add btn btn-graphite-grey nav-itm focused"]    В избранном
    Log To Console   Смена надписи "В избранное" на "В избранном" подтверждено
#Шаг 4 Клик "Информация" произведен
    Sleep    2 seconds
    Click Element    xpath=.//li[text()="Информация"]
    Log To Console    Шаг 4 Клик "Информация" произведен
    Sleep    1 seconds
    #Wait Until Element Contains   xpath=.//i[@class="i-arrow-grey-b"]    i-arrow-grey-b
    Log To Console  Наличие ---- на вкладке "Информация" подтверждено
#Шаг 5    Click button "Отзывы"
    Sleep    2 seconds
    Click Element    xpath=.//li[text()="Отзывы"]
    Log To Console    Шаг 5 Клик "Отзывы" произведен
    Sleep    1 seconds
    #Wait Until Element Contains   xpath=.//i[@class="i-arrow-grey-b"]    i-arrow-grey-b
    Log To Console  Наличие ---- на вкладке "Отзывы" подтверждено
#Шаг 6    Click button "Похожие фильмы"
    Sleep    2 seconds
    Click Element    xpath=.//li[text()="Похожие фильмы"]
    Log To Console    Шаг 6 Клик "Похожие фильмы" произведен
    Sleep    1 seconds
    #Wait Until Element Contains   xpath=.//i[@class="i-arrow-grey-r"]    i-arrow-grey-r
    Log To Console  Наличие --- на вкладке "Похожие фильмы" подтверждено
    Sleep    1 seconds
    Click Element  xpath=.//i[@class="i-arrow-grey-r"]
    Sleep    1 seconds
#Шаг 7    Click button "Описание"
    Sleep    2 seconds
    Click Element    xpath=.//li[text()="Описание"]
    Log To Console    Шаг 7 Клик "Описание" произведен
    Sleep    1 seconds
    #Wait Until Element Contains   xpath=.//i[@class="i-arrow-grey-b"]    i-arrow-grey-b
    Log To Console  Наличие --- на вкладке "Описание" подтверждено
    Sleep    2 seconds
    Close Browser
