import os
from datetime import datetime

today = datetime.now()

# Create a directory and join the path
dir = os.path.join(os.getcwd(),"Logs/Logs_"+today.strftime('%Y_%m_%d_%H_%M'))

# change the directory to testcase for execution
os.chdir("/home/hemin/PycharmProjects/SMVS_Global/TestCases")

# execute robot command and save logs in Logs/ with timestamp
os.system("robot --outputdir "+ dir +" Test_Login_Page_TCs.robot")