*** Settings ***
Library           Selenium2Library

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2library==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
update_role_with_invalid_data
    Open Browser    http://192.168.50.66/    ff
    Input Text    xpath=//input[@id='emailid']    veera@gm.com
    Input Password    xpath=//input[@id='pwd']    mypassword
    Click Button    xpath=//button[@class='btn btn-purple btn-block text-uppercase waves-effect waves-light']
    sleep    10
    Wait Until Page Contains Element    xpath=//*[@id="sidebar-menu"]/ul/li[1]/ul/li[2]/a    30
    Click Element    xpath=//*[@id="sidebar-menu"]/ul/li[1]/ul/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    manager1
    Wait Until Page Contains    manager1    30
    Click Element    xpath=//*[@id="roleList"]/tr/td[3]/a[1]/i
    Wait Until Page Contains    Edit Details    30
    Wait Until Page Contains Element    xpath=//*[@id="editrolename"]    30
    Sleep    10
    Clear Element Text    xpath=//*[@id="editrolename"]
    Sleep    10
    Input Text    xpath=//*[@id="editrolename"]    manager2@gm.com
    sleep    5
    Wait Until Page Contains Element    xpath=//*[@id="custom-modal-edit"]/div/div/div[1]/div[2]/div/div/button/span[1]    30
    Click Element    xpath=//*[@id="custom-modal-edit"]/div/div/div[1]/div[2]/div/div/button/span[1]
    Wait Until Page Contains Element    xpath=//*[@id="custom-modal-edit"]/div/div/div[1]/div[2]/div/div/div/ul/li[3]/a/span[1]    30
    Click Element    xpath=//*[@id="custom-modal-edit"]/div/div/div[1]/div[2]/div/div/div/ul/li[3]/a/span[1]
    Wait Until Page Contains Element    xpath=//button[contains(text(),'Save Changes')]    30
    Sleep    10
    Click Element    xpath=//button[contains(text(),'Save Changes')]
    sleep    10
    Reload Page
    Wait Until Page Contains Element    xpath=//*[@id="datatable-responsive_filter"]/label/input    30
    Input Text    xpath=//*[@id="datatable-responsive_filter"]/label/input    manager2@gm.com
    Wait Until Page Contains    manager2@gm.com    30
    Wait Until Page Contains Element    xpath=//img[@class='img-circle']    30
    sleep    10
    Click Element    xpath=//img[@class='img-circle']
    Sleep    10
    Wait Until Page Contains Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']    30
    Click Element    xpath=//i[@class='ti-power-off m-r-10 text-danger']
    Sleep    5
    Close Browser
    sleep    2

    
