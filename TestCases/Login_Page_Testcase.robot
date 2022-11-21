*** Settings ***
Documentation    Login Functionality
Library    SeleniumLibrary
Resource    ../Resources/General.robot
Resource    ../PageObjects/login_page.robot
Resource    ../Resources/General.robot
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
Verify Username Error Message
    #[Documentation]     TC-1:- Validate login functionality
    [Tags]      Sanity
    Open SMVS Global URL - Linux
    Enter Credentials for Username and Password
    Remove Username field data
    Click on Sign-in Button
    Error message for Username
    Close Browser Session

Verify Password Error Message
    #[Documentation]     TC-2:- Validate login functionality
    [Tags]      Sanity
    Open SMVS Global URL - Linux
    Enter Credentials for Username and Password
    Remove Password field data
    Click on Sign-in Button
    Error message for Password
    Close Browser Session

Verify SMVS_Global_page open successfully
    #[Documentation]     TC-3:- Validate login functionality
    [Tags]      Sanity
    Open SMVS Global URL - Linux
    Enter Credentials for Username and Password
    Click on Sign-in Button
    Role Selection Page should be Open after loggin
    Close Browser Session

#example mail
#    send mail no attachment  ${SMTP_SERVER}  ${USER}  ${PASS}  ${mail}  ${subject}  ${text}