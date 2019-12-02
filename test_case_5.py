from Projekt_Smart_LG.page_lg import *#Projekt_Smart_LG.
import time
from datetime import datetime
from selenium import webdriver

class Test_lib_5:
    ROBOT_LIBRARY_SCOPE = "TEST CASE"
    def test_case_5(self):
        print('Запуск Тест кейс № 5 smTV-5 "Кнопка бесплатные"')
        mail_1 = 'anybodytest08@gmail.com'
        pwds = 'qqqqqq'
        chrome_options = webdriver.ChromeOptions()
        chrome_options.add_argument('--incognito')  # Запуск браузера в режиме инкогнито
        self.driver = webdriver.Chrome(chrome_options=chrome_options)
        self.driver.get("http://services.anybody.ru/alliance/?overrideParams=true&platform=lgn")
        self.driver.maximize_window()
        self.driver.implicitly_wait(10)
        page = MainPage(self.driver)
        result = ResultPage(self.driver)
        #  Шаг 1
        page.loger('Установлен чекбокс "Бесплатные"')
        page.click_xpath('.//div[@class="btn-checkbox-box"]')
        self.driver.find_element_by_xpath('.//div[@class="btn-checkbox-box"]').click()
        print('Клик "Бесплатные" произведен')
        time.sleep(2)
        #  Шаг 2
        sel = 'div:nth-child(1) > div.carousel-lst-itm-overlay'
        self.driver.find_element_by_css_selector(sel).click()
        print('Переход на карточку фильма  2-го постера с главной страницы произведен')
        #  Шаг 3
        page.click_xpath('.//div[text()="Смотреть"]')
        print('Click кнопки "Смотреть" произведен')
        time.sleep(60)
        page.click_stop()
        print('Клик кнопки "stop" произведен')
        print('Возврат на страницу фильма')
        time.sleep(2)
        #  Шаг 4
        self.driver.find_element_by_css_selector('#return > i').click()
        print('Клик "Назад" произведен')
        self.driver.close()

