*** Settings ***
Documentation  A resorce file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables ***
${user_name}          rahulshettyacademy
${invalid_password}   12345678
${valid_password}     learning
${url}                https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***
open the browser with the Mortgage payment url
    Create Webdriver    Chrome  executable_path=C:\Users\laura.cabezas\AppData\chromedriver_win32
    Go To   ${url}