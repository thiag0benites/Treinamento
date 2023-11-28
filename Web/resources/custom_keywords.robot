*** Settings ***
Documentation    Keywords personalizadas com robot framework.
Library    SeleniumLibrary

*** Keywords ***
Select item combobox
    [Arguments]    ${ele_field}    ${item_list}
    Click Element    ${ele_field}
    Sleep    1
    Input Text    xpath=//i[@class="oxd-icon bi-caret-up-fill oxd-select-text--arrow"]    ESS
    # Input Text    xpath=/div[@class="oxd-select-text-input"]    ESS
    Sleep    0.5
    ${value}    Get Text    ${ele_field}
    IF    "${value}" != "${item_list}"    Fail    O item ${item_list} não existe na lista!