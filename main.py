import os
from datetime import datetime

today = datetime.now()

if today.hour < 12:
    h = "00"
else:
    h = "12"

dir = os.mkdir("C:\\Users\\hemin.patel\\PycharmProjects\\SMVS_Global\\Logs\\Logs_" + today.strftime('%Y%m%d')+ h)
os.chdir("C:\\Users\\hemin.patel\\PycharmProjects\\SMVS_Global\\TestCases")
os.system("robot Test_login_page.robot")
os.system("mv log.* out* report* .\\Logs\\"+str(dir))