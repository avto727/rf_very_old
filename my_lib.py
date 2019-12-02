import time
from datetime import datetime
from selenium import webdriver


class Custom_lib:
    ROBOT_LIBRARY_SCOPE = "TEST CASE"



    def mail_random(self):
        d = str(datetime.today())
        ds = d.replace('-', '')
        d = ds.split(':')[0]
        d_2 = ds.split(':')[1]
        d_3 = d.replace(' ', '')
        rand = d_3 + d_2
        random_mail = 'anybodytest' + rand + '@tvtest.ru'
        print(random_mail)

        return (str(random_mail))

    def inputc_logins(self, a_1,a_2, logi):
        self.driver = webdriver.Chrome()
        print('1  Переход в функцию   ',  a_1, '  ', a_2, '  ', logi)
        logi = str(logi)
        i = 0
        for self.dar in logi:
            self.dar = logi[i]  # l - буква в слове
            if self.dar == ' ':
                self.xpath = './/div[@class="screen-keyboard-space btn btn-keyboard nav-itm"]'
                self.driver.find_element_by_xpath(str(self.xpath)).click()
            else:
                if self.dar in '@1234567890-_=+':
                    self.driver.find_element_by_xpath('.//div[text()="?123"]').click()
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.driver.find_element_by_xpath(str(self.xpath)).click()
                    self.driver.find_element_by_xpath('.//div[text()="?123"]').click()
                else:
                    self.xpath = ('.//div[text()="%s"]' % self.dar)
                    self.driver.find_element_by_xpath(str(self.xpath)).click()
            i += 1
        try:  # Заменить try на if
            self.driver.find_element_by_xpath('.//div[text()="OK"]').click()
        except:
            self.driver.find_element_by_xpath('.//div[text()="Найти"]').click()
        return