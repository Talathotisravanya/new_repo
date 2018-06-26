*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
create_user_with_valid_data
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    veera@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a    30
    Click Element    xpath=//*[@id="wrapper"]/div[3]/div/div/div[1]/div/div/a
    sleep    10
    Input Text    id:firstname    sal1004
    Input Text    id:lastname    emp
    Input Text    id:email    sal1004@gmail.com
    Input Text    id:empno    1003
    Click Element    id:roleId
    Click Element    xpath=//*[@id="roleId"]/option[5]
    Click Element    id:reportingId
    Wait Until Page Contains Element    xpath=//*[@id="reportingId"]/option[515]    30
    Click Element    xpath=//*[@id="reportingId"]/option[515]
    Input Text    id:location    hyderabad
    Wait Until Page Contains Element    id:createuser    30
    Click Element    id:createuser
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="user_creation"]/div[5]/div/button[2]    30
    Click Element    xpath=//*[@id="user_creation"]/div[5]/div/button[2]
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="sidebar-menu"]/ul/li[1]/a/span[1]    30
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    sleep    10
    Reload Page
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    sleep    10
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    sal1004@gmail.com
    Wait Until Page Contains    sal1004@gmail.com    30
    Wait Until Page Contains Element    xpath=//img[@class='img-circle']    30
    sleep    10
    Click Element    xpath=//img[@class='img-circle']
    Sleep    10
    Wait Until Page Contains Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']    30
    Click Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']
    Sleep    5
    Close Browser
    sleep    2
