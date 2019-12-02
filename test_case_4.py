from Projekt_Smart_LG.page_lg import *#Projekt_Smart_LG.
import time
from datetime import datetime
from selenium import webdriver


class Test_lib_4:
    ROBOT_LIBRARY_SCOPE = "TEST CASE"

    # Тест кейс № 4 smTV-4 "Регистрация нового пользователя"
    def test_case_4(self):
        print('Запуск Тест кейс № 4 smTV-4 "Регистрация нового пользователя"')
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
        # self.driver.find_element_by_xpath('.//button[@class="close"]').click()
        # Шаг 6
        d = str(datetime.today())
        ds = d.replace('-', '')
        d = ds.split(':')[0]
        d_2 = ds.split(':')[1]
        d_3 = d.replace(' ', '')
        rand = d_3 + d_2
        random_mail = 'anybodytest' + rand + '@ttest.ru'
        page.registration(random_mail, pwds)
        # Шаг 9
        page.click_ret()
        print('Шаг 9 Клик "Назад" произведен')
        # Шаг 10
        page.click_ret()
        print('Клик "Назад" произведен')
        time.sleep(2)

        # Шаг 11
        page.click_xpath('.//span[text()="Да"]')
        print('Шаг 11 Клик "Да - выйти из приложения" произведен')
        time.sleep(1)
        # Шаг 12
        self.driver.get("http://services.anybody.ru/alliance/?overrideParams=true&platform=lgn")
        # Шаг 13
        page.click_up('Профиль')
        print('Шаг 13 Клик "Профиль" произведен')
        # Шаг 14
        page.click_up('Выйти из профиля')
        print('Шаг 14 Клик "Выйти из профиля" произведен')
        # Шаг 15
        page.click_up('Зарегистрироваться')
        time.sleep(1)
        print('Шаг 15 Клик "Зарегистрироваться" № 3 произведен')
        # Шаг 16
        time.sleep(1)
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(1) > input').click()
        print('Клик "Введите e-mail" произведен')
        # self.driver.find_element_by_xpath('.//i[@class="i-globe"]').click()
        page.click_xpath('.//i[@class="i-globe"]')
        page.login(random_mail)
        print('Шаг 16 Ввод № 2 логина произведен', random_mail)
        time.sleep(1)
        # Шаг 17
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(2) > input').click()
        print('Шаг 17 Клик "Введите пароль" произведен')
        page.login(pwds)
        print('Ввод пароля произведен')
        time.sleep(1)
        # Шаг 18
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(3) > input').click()
        print('Шаг 18 Клик "Введите свой пароль ещё раз" произведен')
        page.login(pwds)
        print('Повторный ввод пароля произведен')
        # Шаг 19
        page.click_up('Зарегистрироваться')
        page.waitForElementVisible('.//div[@class="msg-error"]', 7)
        print('Шаг 19 Клик "Зарегистрироваться" № 4 произведен')
        # Проверка появления надписи "Пользователь с таким e-mail уже существует. Пожалуйста, задайте другой e-mail."
        resic = str(result.find_link("div", "msg-error"))
        # существует - проверочное словосочетание надписи
        assert ("существует") in resic
        print('наличие зарегистрированного пользователя с таким е-майлом подтверждено')
        page.click_home()
        page.loger_info('Клик "Home" произведен')
        self.driver.close()
# --------------------------------------------------------------------------------------------------------------
