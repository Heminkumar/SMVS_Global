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
    Open SMVS Global URL
    Enter Credentials for Username and Password
    Click on Sign-in Button
    #Role Selection Page should be Open after logging
    Close Browser Session