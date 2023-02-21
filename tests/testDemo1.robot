*** Settings ***
Documentation  To validate the Login Form
Library  SeleniumLibrary
Test Teardown   Close Browser

*** Variables ***
${Error_Message_Login}      css:.alert-danger

*** Test Cases ***
Validate UnSuccesful Login
    open the browser with the Mortgage payment url
    Fill the login Form
    wait until it checks and display error message
    verify error message is correct

*** Keywords ***
open the browser with the Mortgage payment url
    Create Webdriver    Chrome  executable_path=C:\Users\laura.cabezas\AppData\chromedriver_win32
    Go To   https://rahulshettyacademy.com/loginpagePractise/

Fill the login Form
    Input Text  username    rahulshettyacademy
    Input Password  password    12345678
    Click Button    signInBtn

wait until it checks and display error message
    Wait Until Element Is Visible   ${Error_Message_Login}

verify error message is correct
    Element Text Should Be  ${Error_Message_Login}  Incorrect username/password.
