import time
from selenium import webdriver
from bs4 import BeautifulSoup
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
from colorama import Fore, Back, Style
import logging




class BasePage(object):

    def __init__(self, driver):
        self.driver = driver

class ResultPage(BasePage):
    # Найти подтверждающий элемент
    def find_link(self, tag_, class_):
        # print(self, tag_, class_)
        time.sleep(2)
        table = self.driver.page_source
        time.sleep(2)
        soup = BeautifulSoup(table, 'lxml')
        ls = soup.find(tag_, class_)
        # print(ls)
        return ls

    def find_all_link(self, tag_, class_):
        # print(self, tag_, class_)
        time.sleep(2)
        table = self.driver.page_source
        soup = BeautifulSoup(table, 'lxml')
        ts = soup.find_all(tag_, class_)
        # print(ts)
        return ts


class MainPage(BasePage):

#  Функция загрузки главной страницы
    def check_page_loaded(self):
        self.driver.page_source
        xpath = './/div[@class="carousel-visual-area"]'
        self.waitForElementClickable(xpath, 15)
        return self.driver.find_element_by_xpath('.//div[@class="carousel-visual-area"]')

#  Функция клик пропуска фулл скрина test case 9 + all Sony
    def click_skip(self, dclass):
        skip_xpath = ('.//button[@class="%s"]' % dclass)
        # skip_xpath = ('.//button[text()="%s"]' % dclass)
        time.sleep(1)
        # self.waitForElementClickable(skip_xpath, 80)
        self.driver.find_element_by_xpath(skip_xpath).click()

#  Функция клик кнопок верхнего меню
    def click_up(self, dep):
        up_xpath = ('.//div[text()="%s"]' % dep)
        self.waitForElementClickable(up_xpath, 120)
        time.sleep(1)
        self.driver.find_element_by_xpath(up_xpath).click()
        # print('Клик', dep)
        return

#  Функция клик вкладок
    def click_li(self, dep):
        li_xpath = ('.//li[text()="%s"]' % dep)
        self.waitForElementClickable(li_xpath, 80)
        time.sleep(1)
        self.driver.find_element_by_xpath(li_xpath).click()
        # print('Клик', dep)
        return

#  Функция клик кнопки "Назад"
    def click_ret(self):
        ret_cssel = './/i[@class="i-return"]'
        self.waitForElementClickable(ret_cssel, 20)
        self.driver.find_element_by_css_selector('#return > i').click()
        # print('Клик "Назад"')
        return
#                                                 BUTTONS

#  Функция клик кнопки "Home"
    def click_home(self):
        sea_xpath = './/i[@class="i-home"]'
        self.waitForElementClickable(sea_xpath, 60)
        time.sleep(2)
        self.driver.find_element_by_xpath(sea_xpath).click()
        print('Клик "Home"')

#  Функция клик кнопки "Поиск"
    def click_sea(self):
        sea_xpath = './/i[@class="i-search"]'
        self.waitForElementClickable(sea_xpath, 60)
        time.sleep(2)
        self.driver.find_element_by_xpath(sea_xpath).click()
        print('Клик "Поиск"')
        return
#  Функция клик кнопок нижнего меню
    def click_down(self, word):
        self.driver.find_element_by_xpath('.//div[@class="ftr-nav-free btn btn-checkbox nav-itm"][contains(., word)]').click()

#  Функция клик кнопки "close"
    def click_close(self):
        self.driver.find_element_by_xpath('.//i[@class="i-close"]').click()

#  Функция клик кнопки "stop"
    def click_stop(self):
        # stop_xpath = '/html/body/div[2]/div[2]/div/div[8]/div[6]/div[3]/i'
        stop_xpath = './/i[@class="i-stop"]'
        stop_css = 'body > div.app > div.pg > div > div.player-ctrls.mini > div.player-ctrls-movie > div.player-ctrls-stop.btn.btn-player.nav-itm > i'
        # self.waitForElementClickable(stop_xpath, 20)
        self.driver.find_element_by_xpath(stop_xpath).click()
        # self.driver.find_element_by_css_selector(stop_css).click()

#  Функция клик кнопки прокрутки вправо
    def click_right(self):
        stop_xpath = './/i[@class="i-arrow-grey-r"]'
        self.waitForElementClickable(stop_xpath, 20)
        self.driver.find_element_by_xpath(stop_xpath).click()

#  Функция клик кнопки "stop" через css
    def click_stop_css(self):
        self.driver.find_element_by_css_selector('body > div.app > div.pg > div > div.player-ctrls.mini > div.player-ctrls-movie > div.player-ctrls-stop.btn.btn-player.nav-itm > i').click()


#  Функция клик кнопки "pause"
#body > div.app > div.pg > div > div.player - ctrls.mini > div.player - ctrls - movie > div.player - ctrls - pause.btn.btn - player.disabled > i
    def click_pause(self):#
        paus_xpath = './/i[@class="i-pause"]'
        # self.waitForElementClickable(paus_xpath, 15)
        self.driver.find_element_by_xpath(paus_xpath).click()

#  Функция клик кнопки "play"  в круге (в центре экрана плеера)
    def click_play(self):
        try:
            play_xpath = './/i[@class="i-play-huge"]'
            self.waitForElementClickable(play_xpath, 15)
            self.driver.find_element_by_xpath(play_xpath).click()
        except:
            print('кнопка плей, через except')
            time.sleep(3)
#  Функция клик кнопки "Forward"
    def click_forw(self):
        self.driver.find_element_by_xpath('.//i[@class="i-forward"]').click()

#  Функция клик кнопки "Backward"
    def click_back(self):
        self.driver.find_element_by_xpath('.//i[@class="i-rewind"]').click()

#  Функция клик кнопки "sub"
    def click_sub(self):
        self.driver.find_element_by_xpath('.//i[@class="player-ctrls-sub btn btn-player disabled"]').click()

#  Функция клик кнопки "прокрутка вправо"
    def click_r(self):
        r_xpath = './/i[@class="carousel-scrlr-r-i i-arrow-r"]'
        self.waitForElementClickable(r_xpath, 15)
        self.driver.find_element_by_xpath(r_xpath).click()

#  Функция клик кнопки "Пропустить" баннер Sony
    def close_of(self):
        r_xpath = './/button[@class="carousel-scrlr-r-i i-arrow-r"]'
        self.waitForElementClickable(r_xpath, 15)
        self.driver.find_element_by_xpath(r_xpath).click()

    def click_xpath(self, r_xpath):
        self.waitForElementClickable(r_xpath, 20)
        self.driver.find_element_by_xpath(r_xpath).click()




                                         #Exception


    def waitForElementPresent(self, xpath, timer):
            WebDriverWait(self.driver, timer).until(EC.presence_of_element_located((By.XPATH, xpath)))

    def waitForElementClickable(self, xpath, timer):
            WebDriverWait(self.driver, timer).until(EC.element_to_be_clickable((By.XPATH, xpath)))

    def waitForElementVisible(self, xpath, timer):
            WebDriverWait(self.driver, timer).until(EC.presence_of_element_located((By.XPATH, xpath)))









#                                                OPERATIONS

#Функция ввода логина
    def login(self, logi):
        logi = str(logi)
        i = 0
        for self.dar in logi:
            self.dar = logi[i]  # l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
                self.click_xpath(str(self.xpath))
            else:
                if self.dar in '@1234567890-_=+':
                    self.click_xpath('.//div[text()="?123"]')
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.click_xpath(str(self.xpath))
                    self.click_xpath('.//div[text()="?123"]')
                else:
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.click_xpath(str(self.xpath))
            i += 1
        self.click_xpath('.//div[text()="Готово"]')
        return

#Функция ввода логина
    def type(self, logi):
        logi = str(logi)
        i = 0
        for self.dar in logi:
            self.dar = logi[i]  # l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
                self.click_xpath(str(self.xpath))
            else:
                if self.dar in '@1234567890-_=+':
                    self.click_xpath('.//div[text()="?123"]')
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.click_xpath(str(self.xpath))
                    self.click_xpath('.//div[text()="?123"]')
                else:
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.click_xpath(str(self.xpath))
            i += 1
        self.click_xpath('.//div[text()="Найти"]')
        return


    def kid(self):
        self.click_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "м")]')
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "а")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "л")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "ы")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "ш")]').click()
        self.driver.find_element_by_xpath('.//div[text()="Найти"]').click()

    def card_1(self, card):
        card = str(card)
        i = 0
        for self.dar in card:
            self.dar = card[i]  # l - буква в слове
            self.xpath = ('.//div[text()="%s"]' % self.dar)
            self.click_xpath(str(self.xpath))
            i += 1
        self.click_xpath('.//i[@class="checkbox-i i-checked-grey"]')
        self.click_xpath('.//div[text()="Оплатить"]')


    def mobil_1(self, number):
        number = str(number)
        i = 0
        for self.dar in number:
            self.dar = number[i]  # l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
            else:
                self.xpath = ('.//div[text()="%s"]' % self.dar)
                self.driver.find_element_by_xpath(str(self.xpath)).click()
            i += 1
            self.driver.find_element_by_xpath('.//i[@class="checkbox-i i-checked-grey"]').click()
        # time.sleep(3)
        self.click_xpath('.//div[text()="Оплатить"]')



    def add_1(self):
        time.sleep(0.5)
        self.click_xpath('.//i[@class="i-right"]')
        time.sleep(0.5)
        self.click_xpath('.//i[@class="i-right"]')
        time.sleep(0.5)
        self.click_xpath('.//i[@class="i-backspace"]')
        time.sleep(0.5)

    def promo(self):

        self.driver.find_element_by_xpath('.//i[@class="i-globe"]').click()
        self.driver.find_element_by_xpath('.//i[@class="i-caps"]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "f")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "c")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "h")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "m")]').click()
        self.driver.find_element_by_xpath('.//div[@class="screen-keyboard-num btn btn-keyboard btn-keyboard-ctrl nav-itm"][contains(., "?123")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "1")]').click()
        self.driver.find_element_by_xpath('.//div[@class="screen-keyboard-num btn btn-keyboard btn-keyboard-ctrl nav-itm"][contains(., "?123")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "u")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "w")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "l")]').click()
        self.driver.find_element_by_xpath('.//div[@class="btn btn-keyboard nav-itm"][contains(., "e")]').click()
        self.driver.find_element_by_xpath('.//div[text()="OK"]').click()
        return

    def words_search(self, word):
        word = str(word)
        i = 0
        for self.dar in word:
            self.dar = word[i] #l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
            else:
                self.xpath = ('.//div[text()="%s"]' % self.dar)
            self.driver.find_element_by_xpath(str(self.xpath)).click()
            i += 1
        print('Ввод названия фильма завершен')
        self.driver.find_element_by_xpath('.//div[text()="Найти"]').click()

    def words_mess(self, word):
        self.driver.find_element_by_xpath('.//i[@class="i-globe"]').click()
        word = str(word)
        i = 0
        for self.dar in word:
            self.dar = word[i]  # l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
            else:
                self.xpath = ('.//div[text()="%s"]' % self.dar)
            self.driver.find_element_by_xpath(str(self.xpath)).click()
            i += 1
        print('Ввод текста сообщения завершен')
        self.driver.find_element_by_xpath('.//div[text()="Готово"]').click()

    def logi(self, text):
        logging.basicConfig(filename="sample.log", level=logging.INFO)
        print(Fore.RED + text)
        # print(Fore.BLACK + 'some BLACK text')
        # print(Fore.BLUE + 'some BLUE text')
        logging.info("Informational message" + text)


    def loger(self, text):
        logging.basicConfig(format=u'%(filename)s[LINE:%(lineno)d]# %(levelname)-8s [%(asctime)s]  %(message)s', level=logging.DEBUG)
        logging.info(text)
        print(text)


    def loger_info(self, text):
        logging.basicConfig(format=u'%(filename)s[LINE:%(lineno)d]# %(levelname)-8s [%(asctime)s]  %(message)s',
                        level=logging.DEBUG)
        logging.info(text)
        print(text)


    def loger_error(self, text):
        logging.basicConfig(format=u'%(filename)s[LINE:%(lineno)d]# %(levelname)-8s [%(asctime)s]  %(message)s',
                        level=logging.DEBUG)
        logging.error(text)
        print(text)

    def send_sms(self, phone, message): # Функция отправки смс
        logging.info("Вызов функции отправки СМС")
        time.sleep(30)
        time.sleep(10)  # Время для прихода СМС wait не ставим, т.к. на сайте не проявляется
# Открыть новую пустую вкладку
        self.driver.execute_script("window.open('','_blank');")
        # переключиться на новую вкладку (с индексом 1)
        self.driver.switch_to.window(self.driver.window_handles[1])
        self.driver.get("https://app.mysms.com/")
        self.driver.implicitly_wait(10)
        self.loger_info("Переход в службу СМС")
        self.click_xpath('.//div[@class="gwt-Label"]')  # Новое сообщение
        time.sleep(1)
        self.driver.find_element_by_xpath('.//input[@class="recipientTextBox"]').send_keys(phone)
        time.sleep(1)
        self.driver.find_element_by_xpath('.//div[@class="textarea"]').send_keys(message)
        time.sleep(1)
        self.click_xpath('.//button[@class="styledButton sendButton sim dropdown"]')
        self.loger_info("СМС подтверждения отправлено")
        time.sleep(10)
        self.driver.switch_to.window(self.driver.window_handles[0])
        self.loger_info("Возврат в консоль")


    def login_google(self, emailgo, passok):
        time.sleep(1)
        self.driver.find_element_by_name('identifier').send_keys(emailgo)
        self.loger('Ввод логина Google' + emailgo + 'произведен')
        time.sleep(1)
        # Шаг 29
        self.driver.find_element_by_css_selector('#identifierNext > content > span').click()
        self.loger(' Клик кнопки "Далее" произведен')
        time.sleep(1)
        # Шаг 30
        self.driver.find_element_by_name('password').send_keys(passok)
        # self.driver.find_element_by_css_selector('#password > div.aCsJod.oJeWuf > div > div.Xb9hP > input').send_keys(passok)
        self.loger(' Ввод пароля произведен')
        time.sleep(1)
        # Шаг 31
        self.driver.find_element_by_xpath('.//span[@class="RveJvd snByac"][contains(., "Далее")]').click()
        self.loger(' Клик кнопки "Далее" произведен')
        time.sleep(20)
        return



    def simple(self):
        result_1 = 'class'
        return result_1

    def registration(self, random_mail, pwds):
        # Шаг 1
        self.click_up('Профиль')
        print('# Шаг 1 Клик "Профиль" произведен')
        # Шаг 2
        self.click_up('Зарегистрироваться')
        time.sleep(1)
        print('# Шаг 2 Клик "Зарегистрироваться" № 1 произведен')
        time.sleep(1)
        # Шаг 3
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(1) > input').click()
        # self.driver.find_element_by_xpath('.//input[@class="profile-usr-register-email nav-itm"]').click()
        print('# Шаг 3 Клик "Введите e-mail" произведен')
        self.click_xpath('.//i[@class="i-globe"]')
        self.login(random_mail)
        print('Ввод № 1 логина произведен', random_mail)
        time.sleep(1)
        # Шаг 4
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(2) > input').click()
        print('Шаг 4 Клик "Введите пароль" произведен')
        self.login(pwds)
        print('Ввод пароля произведен')
        time.sleep(1)
        # Шаг 5
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div:nth-child(3) > input').click()
        print('Шаг 5 Клик "Введите свой пароль ещё раз" произведен')
        self.login(pwds)
        print('Повторный ввод пароля произведен')
        self.click_up('Зарегистрироваться')
        time.sleep(1)
        print('Шаг 6 Клик "Зарегистрироваться" № 2 произведен')
        time.sleep(1)
        # Шаг 7
        self.driver.find_element_by_css_selector(
            'body > div.app > div.pg > div.profile-tab-cnt > div > div.profile-usr-login-inputs > div:nth-child(2) > input').click()
        print('Шаг 7 Клик "Введите пароль" произведен')
        self.login(pwds)
        print('Ввод пароля произведен')
        # Шаг 8
        self.click_up('Войти')
        print('Шаг 8 Клик "Войти" произведен')