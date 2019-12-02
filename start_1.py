import subprocess
import time

subprocess.call(['pybot.bat', 'C:\\Users\\user\\.jenkins\\workspace\\rf_SmartTV_LG\\Projekt_Smart_LG\\test_suit_no_pay.robot'])
time.sleep(5)
subprocess.call(['python.exe', 'C:\\Users\\user\\.jenkins\\workspace\\rf_SmartTV_LG\\Projekt_Smart_LG\\mail.py'])




