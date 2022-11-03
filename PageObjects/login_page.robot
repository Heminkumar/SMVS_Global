*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/General.robot

*** Variables ***
${Username_field}    xpath://input[@placeholder="User Name"]
${Password_field}    xpath://input[@placeholder="Password"]
${Login_Button}    xpath://button[@class='btn btn-primary full-width']
#${Back_to_login_text_on_Role_Selection_page}   xpath://p[@class="text-inverse b-b-default text-right"]
${Role_Selection_text}   xpath://h3[@class='text-center']

*** Keywords ***
Timeout
    set selenium timeout  15

Enter Credentials for Username and Password
    element should be visible   ${Username_field}
    element should be enabled   ${Username_field}
    Input Text  ${Username_field}   ${Username}
    element should be visible   ${Password_field}
    element should be enabled   ${Password_field}
    Input Text  ${Password_field}   ${Password}

Click on Sign-in Button
    Click Element   ${Login_Button}

Role Selection Page should be Open after loggin
    wait until element is visible    ${Role_Selection_text}