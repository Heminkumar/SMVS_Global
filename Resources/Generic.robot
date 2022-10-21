*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Global_URL}   https://smvsweb.azurewebsites.net/UAT
${Browser}      chrome
${Username}     kjmaniyar
${Password}     KMGlobal1$

*** Keywords ***
Open SMVS Global URL
    Create Webdriver    Chrome    executable_path=C:/Users/hemin.patel/Downloads/chromedriver_win32/chromedriver.exe
    go to    ${Global_URL}
    Maximize Browser Window

Close Browser Session
    close browser