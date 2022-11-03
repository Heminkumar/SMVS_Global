*** Settings ***
Documentation    Login Functionality
Library    SeleniumLibrary
Resource    ../Resources/General.robot
Resource    ../PageObjects/login_page.robot
Resource    ../Resources/Generic.robot
Library    ../Library/sendEmail.py

*** Variables ***
${SMTP_SERVER}       smtp.gmail.com
${USER}     hemin patel
${PASS}
${mail}     "hemin.patel@volansys.com"
${subject}      Test Email
${text}     Test Result

*** Keywords ***

*** Test Cases ***
Verify SMVS_Global_page open successfully
    [Documentation]     TC-1:- Validate login functionality
    [Tags]      Sanity
    Open SMVS Global URL - Linux
    Enter Credentials for Username and Password
    Click on Sign-in Button
    Role Selection Page should be Open after loggin
    Close Browser Session

#example mail
#    send mail no attachment  ${SMTP_SERVER}  ${USER}  ${PASS}  ${mail}  ${subject}  ${text}