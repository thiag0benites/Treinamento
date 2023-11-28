*** Settings ***
Documentation       Passos de contexto.

Resource            ../pages/admin_page.robot
Resource            ../resources/custom_keywords.robot


*** Keywords ***
Dado que acesso o menu "${item_menu}"
    Click item menu    ${item_menu}
    Wait Until Element Is Visible    ${PAGE_ADMIN}[btn_add]    30    Erro ao carregar a tela ${item_menu}

E realizo o click no botao [+ Add]
    Click Button    ${PAGE_ADMIN}[btn_add]

E preencho os campos [User Role], [Employee Name], [Status], [Username], [Password] e [Confirm Password]
    ${data_new_user}    Gera dados novo usuario
    Select item combobox    ${PAGE_ADMIN}[user_role]    ${data_new_user}[user_role]
    Input Text    ${PAGE_ADMIN}[employee_name]    ${data_new_user}[employee_name]
    Select item combobox    ${PAGE_ADMIN}[status]    ${data_new_user}[status]
    Input Text    ${PAGE_ADMIN}[user_name]    ${data_new_user}[user_name]
    Input Text    ${PAGE_ADMIN}[password]    ${data_new_user}[password]
    Input Text    ${PAGE_ADMIN}[conf_password]    ${data_new_user}[conf_password]
    Sleep    10

# E realizo o click no botao [Save]
