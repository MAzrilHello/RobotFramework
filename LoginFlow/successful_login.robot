*** Settings ***
Library        SeleniumLibrary

*** Variables ***
*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    chrome
${USERNAME}    standard_user
${PASSWORD}    secret_sauce
${LOGIN_BTN}    id=login-button
${FLASH_MSG}    id=flash
${LOGOUT_LINK}    link=logout
*** Test Cases ***
Login to SauceDemo
    Open browser    ${URL}    ${BROWSER}
    Input Text    xpath=//input[@data-test='username']    ${USERNAME}
    Input Text    xpath=//input[@data-test='password']    ${PASSWORD}
    Click Button    ${LOGIN_BTN}
    Element Should Contain    class=app_logo    Swag Labs
    Close Browser    