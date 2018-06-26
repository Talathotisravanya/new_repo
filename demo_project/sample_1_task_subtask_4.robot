*** Settings ***
Library           String

*** Variables ***
@{packages}       selenium==3.9.0    robotframework-selenium2ibrary==3.0.0    robotframework-seleniumlibrary==3.1.0

*** Test Cases ***
component_1_task_1_subtask_2
    @{ITEMS}    Create List    Good Element 1    Break On Me    Good Element 2
    : FOR    ${ELEMENT}    IN    @{ITEMS}
    \    Log    ${ELEMENT}
    \    Run Keyword If    '${ELEMENT}' == 'Break On Me'    Exit For Loop
    \    Log    Do more actions here ...
