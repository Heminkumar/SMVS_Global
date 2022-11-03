import os
from datetime import datetime

today = datetime.now()

# Create a directory and join the path
dir = os.path.join(os.getcwd(),"Logs/Logs_"+today.strftime('%Y_%m_%d_%H_%M'))

# change the directory to testcase for execution
os.chdir(os.getcwd()+"/TestCases")

# execute robot command and save logs in Logs/ with timestamp
os.system("robot --outputdir "+ dir +" Login_Page_Testcase.robot")