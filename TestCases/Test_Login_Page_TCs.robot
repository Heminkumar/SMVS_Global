*** Settings ***
Documentation    Login Functionality
Library    SeleniumLibrary
Resource    ../Resources/Generic.robot
Resource    ../PageObjects/login_page.robot
Resource    ../Resources/Generic.robot

*** Variables ***

*** Keywords ***

*** Test Cases ***
Verify SMVS_Global_page open successfully
    [Documentation]     TC-1:- Validate login functionality
    [Tags]      Sanity
    Open SMVS Global URL - Linux
    Enter Credentials for Username and Password
    Click on Sign-in Button
    #Role Selection Page should be Open after logging
    Close Browser Session