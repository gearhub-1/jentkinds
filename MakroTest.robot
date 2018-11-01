*** Settings ***
Library    Selenium2Library 

*** Variables ***
${WEB_URL}    https://staging-makro-b2c.eggdigital.com/th 

*** Test Cases ***
TEST
    [TAGS]   TEST
    Log to console  testtest
User Open Browser 
    Open Browser    ${WEB_URL}    chrome 
    Set Window Size    1900    1200
    Sleep    5s
    ${width}    ${height}=      Get Window Size
    Log to console    ${width}x${height}

Validate Makro Web 
    ${txt}=    Get Text    jquery=h4.modal-title.pull-left
    Log to console   ${txt} 