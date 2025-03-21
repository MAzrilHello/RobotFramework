*** Settings ***
Library        SeleniumLibrary

*** Variables ***
*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    chrome
${USERNAME}    standard_user
${PASSWORD}    secretsauce
${LOGIN_BTN}    id=login-button
${FLASH_MSG}    id=flash
${LOGOUT_LINK}    link=logout
${ERROR_MSG}    class=error-message-container error

*** Test Cases ***
Unsuccessful Login
    Open browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@data-test='username']    ${USERNAME}
    Input Text    xpath=//input[@data-test='password']    ${PASSWORD}
    Click Button    ${LOGIN_BTN}
    Element Should Contain    class=${ERROR_MSG}    Epic sadface: Username and password do not match any user in this service
    Close Browser