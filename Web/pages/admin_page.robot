*** Settings ***
Documentation       Elementos de contexto.

Resource            ../config.robot


*** Variables ***
&{PAGE_ADMIN}       btn_add=xpath=//button[text()= ' Add ']
...                 user_role=xpath=//label[text()='User Role']/parent::div/parent::div//div[text()='-- Select --']
...                 employee_name=xpath=//label[text()='Employee Name']/following::input
...                 status=xpath=//label[text()='Status']/parent::div/parent::div//div[text()='-- Select --']
...                 user_name=xpath=//label[text()='Username']/following::input
...                 password=xpath=//label[text()='Password']/following::input
...                 conf_password=xpath=//label[text()='Confirm Password']/following::input


*** Keywords ***
Click item menu
    [Arguments]    ${item}
    Capture Element Screenshot    xpath=//a/span[text()='${item}']
    ${status}    Run Keyword And Return Status    Click Element    xpath=//a/span[text()='${item}']
    IF    "${status}" == "False"
        Fail    Não foi possível efetuar o click no menu ${item}
    END

Gera dados novo usuario
    ${first_name}    First Name
    ${last_name}    Last Name
    ${user_role}    Set Variable    ESS
    ${employee_name}    Set Variable    Automação
    ${status}    Set Variable    Enabled
    ${user_name}    Set Variable    ${first_name}.${last_name}
    ${password}    Set Variable    12345678
    ${conf_password}    Set Variable    12345678

    &{new_user}    Create Dictionary
    ...    user_role=${user_role}
    ...    employee_name=${employee_name}
    ...    status=${status}
    ...    user_name=${user_name}
    ...    password=${password}
    ...    conf_password={conf_password}

    RETURN    &{new_user}
